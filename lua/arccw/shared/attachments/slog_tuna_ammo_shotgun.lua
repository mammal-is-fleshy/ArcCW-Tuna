att.PrintName = "Fractured Shell"
att.Icon = Material("entities/slog_tuna_ammo_frac.png", "mips smooth")
att.Description = "Unstable tip that fractures into smaller chunks when shot."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_ammo"}

att.Mult_RPM = 0.8
att.Mult_Recoil = 1.15
att.Mult_AccuracyMOA = 10
att.Mult_Damage = 1.5
att.Mult_DamageMin = 1.2
att.Mult_Range = 0.5
att.Mult_Penetration = 0.125
att.Override_Num = 6

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then return false end
end