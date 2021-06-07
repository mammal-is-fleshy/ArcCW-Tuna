att.PrintName = "Overclocked Core"
att.Icon = Material("entities/slog_tuna_perk_ovc.png", "mips smooth")
att.Description = "Heats up the firing core. All you need is fire superiority."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_perk"}

att.Mult_AccuracyMOA = 1.15
att.Mult_Damage = 0.75
att.Mult_DamageMin = 0.65
att.Mult_Range = 0.8
att.Mult_RPM = 1.25
att.Mult_MuzzleVelocity = 1.25

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(20, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 2.5)

    return delay / mult
end

att.Override_Firemodes = {
    {
        Mode = 2,
    },
}

att.Hook_GetCapacity = function(wep, cap)
	return wep.RegularClipSize * 3
end