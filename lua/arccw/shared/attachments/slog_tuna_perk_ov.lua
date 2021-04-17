att.PrintName = "Overclocked Core"
att.Icon = Material("entities/slog_tuna_perk_fast.png", "mips smooth")
att.Description = "Heats up the firing core. All you need is fire superiority."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_perk"}

att.Mult_AccuracyMOA = 1.15
att.Mult_Damage = 0.95
att.Mult_DamageMin = 0.85
att.Mult_Range = 0.8
att.Mult_RPM = 1.25
att.Mult_MuzzleVelocity = 1.25

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(10, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 4)

    return delay / mult
end

att.Override_Firemodes = {
    {
        Mode = 2,
    },
}