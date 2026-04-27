#!/usr/bin/env python3
"""Aggregate [XIOC-METRICS] dumps from a map server log over time windows.

Used to slice a single Main_Map_<date>.log into per-scenario aggregate
totals when filling out docs/PHASE3_RESULTS.md (or any future P3-style
matrix run).

Counters that accumulate (sent, delayed, bursts, retransmit, all
distributions, rebuilds) are summed; maxBacklog is taken as a peak.

Usage
-----
  # Single window:
  python tools/aggregate_xioc_metrics.py <log> --window LABEL=HH:MM:SS..HH:MM:SS

  # Multiple windows in one invocation:
  python tools/aggregate_xioc_metrics.py <log> \
      --window "R2=20:38:39..20:42:41" \
      --window "R3=20:45:08..20:49:15"

  # Or load windows from a file (one per line, "LABEL=START..END",
  # blank lines and # comments allowed):
  python tools/aggregate_xioc_metrics.py <log> --windows-file windows.txt

Notes
-----
- Server log timestamps are expected in the LSB default format
  "[MM/DD/YY HH:MM:SS:mmm][map][...]".
- Only HH:MM:SS is matched; cross-midnight windows are not supported
  (split them into two windows if needed).
- UNC paths work on Windows: pass them quoted.
"""
import argparse
import re
import sys

TS_RE       = re.compile(r"\[\d\d/\d\d/\d\d (\d\d:\d\d:\d\d):\d{3}\]")
# Post-trim format (current): no bursts, no retransmit fields.
SENT_RE     = re.compile(r"sent=(\d+) delayed=(\d+) maxBacklog=(\d+)")
# Pre-trim format (Phase 2/3 logs): kept for replay against archival logs.
SENT_OLD_RE = re.compile(r"sent=(\d+) delayed=(\d+) bursts=(\d+) maxBacklog=(\d+) retransmit=\{req=(\d+) hit=(\d+) miss=(\d+)\}")
CHUNKS_RE   = re.compile(r"chunksPerDatagram=\[1:(\d+) 2-4:(\d+) 5-8:(\d+) 9-16:(\d+) 17-32:(\d+) 33-64:(\d+)(?: 65-128:(\d+))?\]")
DGSIZE_RE   = re.compile(r"datagramSize=\[<500:(\d+) 500-799:(\d+) 800-999:(\d+) 1000-1199:(\d+) 1200-1239:(\d+) 1240\+:(\d+)\] rebuilds=(\d+)")
BPP_RE      = re.compile(r"burstPerPoll=\[1:(\d+) 2:(\d+) 3-4:(\d+) 5-8:(\d+)\]")  # archival logs only
TURN_RE     = re.compile(r"turnaround=\[<5:(\d+) 5-19:(\d+) 20-49:(\d+) 50-99:(\d+) 100-199:(\d+) >=200:(\d+)\] ms")

WINDOW_RE = re.compile(r"^([^=]+)=(\d\d:\d\d:\d\d)\.\.(\d\d:\d\d:\d\d)$")


def hhmmss_to_s(s):
    h, m, sec = s.split(":")
    return int(h) * 3600 + int(m) * 60 + int(sec)


def parse_windows_file(path):
    out = []
    with open(path, "r", encoding="utf-8") as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            m = WINDOW_RE.match(line)
            if not m:
                raise SystemExit(f"bad window line: {line!r}")
            out.append((m.group(1).strip(), m.group(2), m.group(3)))
    return out


def parse_window_arg(s):
    m = WINDOW_RE.match(s)
    if not m:
        raise SystemExit(f"bad --window value: {s!r} (expected LABEL=HH:MM:SS..HH:MM:SS)")
    return (m.group(1).strip(), m.group(2), m.group(3))


def iter_metrics_lines(path):
    """Yield (timestamp_seconds, line) for every [XIOC-METRICS] line."""
    with open(path, "r", encoding="utf-8", errors="replace") as f:
        for line in f:
            m = TS_RE.match(line)
            if not m:
                continue
            if "[XIOC-METRICS]" not in line:
                continue
            yield hhmmss_to_s(m.group(1)), line


def aggregate(path, start, end):
    s = hhmmss_to_s(start)
    e = hhmmss_to_s(end)
    agg = {
        "dumps": 0,
        "sent": 0, "delayed": 0, "bursts": 0,
        "maxBacklog": 0,
        "rxReq": 0, "rxHit": 0, "rxMis": 0,
        "chunks": [0] * 7,
        "dgSize": [0] * 6,
        "rebuilds": 0,
        "bpp": [0] * 4,
        "turn": [0] * 6,
    }
    for ts, line in iter_metrics_lines(path):
        if ts < s or ts > e:
            continue
        m = SENT_OLD_RE.search(line)
        if m:
            agg["dumps"]     += 1
            agg["sent"]      += int(m.group(1))
            agg["delayed"]   += int(m.group(2))
            agg["bursts"]    += int(m.group(3))
            agg["maxBacklog"] = max(agg["maxBacklog"], int(m.group(4)))
            agg["rxReq"]     += int(m.group(5))
            agg["rxHit"]     += int(m.group(6))
            agg["rxMis"]     += int(m.group(7))
            continue
        m = SENT_RE.search(line)
        if m:
            agg["dumps"]     += 1
            agg["sent"]      += int(m.group(1))
            agg["delayed"]   += int(m.group(2))
            agg["maxBacklog"] = max(agg["maxBacklog"], int(m.group(3)))
            continue
        m = CHUNKS_RE.search(line)
        if m:
            for i in range(6):
                agg["chunks"][i] += int(m.group(i + 1))
            if m.group(7) is not None:
                agg["chunks"][6] += int(m.group(7))
            continue
        m = DGSIZE_RE.search(line)
        if m:
            for i in range(6):
                agg["dgSize"][i] += int(m.group(i + 1))
            agg["rebuilds"] += int(m.group(7))
            continue
        m = BPP_RE.search(line)
        if m:
            for i in range(4):
                agg["bpp"][i] += int(m.group(i + 1))
            continue
        m = TURN_RE.search(line)
        if m:
            for i in range(6):
                agg["turn"][i] += int(m.group(i + 1))
            continue
    return agg


def fmt_list(xs):
    return "[" + " ".join(str(x) for x in xs) + "]"


def emit(label, start, end, a):
    print(f"=== {label}  [{start} .. {end}] ===")
    print(f"dumps           = {a['dumps']}")
    print(f"sent            = {a['sent']}")
    print(f"delayed         = {a['delayed']}")
    print(f"maxBacklog peak = {a['maxBacklog']}")
    chunks_label = "chunks 1/2-4/5-8/9-16/17-32/33-64"
    chunks_data = a["chunks"][:6]
    if a["chunks"][6] != 0:
        chunks_label += "/65-128"
        chunks_data = a["chunks"]
    print(f"{chunks_label} = {fmt_list(chunks_data)}")
    print(f"dgSize <500/500-799/800-999/1000-1199/1200-1239/1240+ = {fmt_list(a['dgSize'])}")
    print(f"rebuilds        = {a['rebuilds']}")
    print(f"turnaround <5/5-19/20-49/50-99/100-199/>=200 = {fmt_list(a['turn'])}")
    # Archival-only fields (only show when non-zero, i.e. parsing a pre-trim log).
    if a["bursts"] or a["rxReq"] or a["rxHit"] or a["rxMis"]:
        print(f"  [archival] bursts={a['bursts']} retransmit={{req={a['rxReq']} hit={a['rxHit']} miss={a['rxMis']}}}")
    if any(a["bpp"]):
        print(f"  [archival] burstPerPoll 1/2/3-4/5-8 = {fmt_list(a['bpp'])}")
    print()


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("log", help="path to Main_Map_<date>.log (UNC paths ok)")
    p.add_argument("--window", action="append", default=[],
                   help='LABEL=HH:MM:SS..HH:MM:SS (repeatable)')
    p.add_argument("--windows-file", help="file with one LABEL=HH:MM:SS..HH:MM:SS per line")
    args = p.parse_args()

    windows = []
    if args.windows_file:
        windows.extend(parse_windows_file(args.windows_file))
    for w in args.window:
        windows.append(parse_window_arg(w))
    if not windows:
        p.error("at least one --window or --windows-file is required")

    for label, s, e in windows:
        emit(label, s, e, aggregate(args.log, s, e))


if __name__ == "__main__":
    main()
