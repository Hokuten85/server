:onCrash
echo [%date% %time%] Restarting BROKER...

cd H:\ffxiahbot\bin
uv run ffxiahbot broker --inp-csv items.csv --buy-items --sell-items

echo BROKER was stopped or crashed!
GOTO onCrash