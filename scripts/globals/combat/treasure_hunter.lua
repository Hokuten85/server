-----------------------------------
xi = xi or {}
xi.combat = xi.combat or {}
xi.combat.treasureHunter = xi.combat.treasureHunter or {}
-----------------------------------

-- https://forum.square-enix.com/ffxi/threads/56550
xi.combat.treasureHunter.treasureHunterTable =
{
-- TH lvl     VC    C     UC     R     VR     SR    UR
    [ 0] = {  2400, 1500, 1000,  500,  100,   50,   10 },
    [ 1] = {  5100, 3200, 1400,  800,  250,  175,  120 },
    [ 2] = {  6200, 4400, 1900, 1100,  400,  300,  230 },
    [ 3] = {  6900, 4850, 2250, 1350,  525,  420,  335 },
    [ 4] = {  7600, 5300, 2600, 1600,  650,  540,  440 },
    [ 5] = {  8166, 5750, 2900, 1850,  800,  660,  545 },
    [ 6] = {  8600, 6200, 3200, 2100,  950,  780,  650 },
    [ 7] = {  9000, 6650, 3500, 2350, 1100,  900,  760 },
    [ 8] = {  9450, 7100, 3850, 2650, 1275, 1030,  870 },
    [ 9] = {  9900, 7550, 4200, 2950, 1450, 1160,  980 },
    [10] = { 10350, 8000, 4650, 3250, 1650, 1300, 1090 },
    [11] = { 10700, 8450, 5000, 3550, 1850, 1450, 1200 },
    [12] = { 11200, 8900, 5350, 3950, 2025, 1600, 1315 },
    [13] = { 11700, 9350, 5700, 4350, 2200, 1750, 1430 },
    [14] = { 12200, 9800, 6050, 4800, 2400, 1900, 1550 },
}

xi.combat.treasureHunter.dropBracketTable =
{
    [1] = { 2400 },
    [2] = { 1500 },
    [3] = { 1000 },
    [4] = {  500 },
    [5] = {  100 },
    [6] = {   50 },
    [7] = {    0 }, -- Set to 0, for weird cases in DB.
}

xi.combat.treasureHunter.getDropRate = function(thLevel, dropRate)
    -- Sanitize parameters
    local thTier     = utils.defaultIfNil(thLevel, 0)
    local thDropRate = utils.defaultIfNil(dropRate, 0)

    thTier     = utils.clamp(thTier, 0, 14)
    thDropRate = utils.clamp(thDropRate, 0, 10000)

    -- Early returns: Drop is guaranteed or non-existant.
    if thDropRate == 10000 then
        return 10000
    elseif thDropRate == 0 then
        return 0
    end

    -- Calculate original drop rate bracket.
    local thBracket = 0

    for i = 1, #xi.combat.treasureHunter.dropBracketTable do
        if thDropRate >= xi.combat.treasureHunter.dropBracketTable[i][1] then
            thBracket = i

            break
        end
    end

    -- Calculate TH drop rate
    local newDropRate = xi.combat.treasureHunter.treasureHunterTable[thTier][thBracket]

    return newDropRate
end
