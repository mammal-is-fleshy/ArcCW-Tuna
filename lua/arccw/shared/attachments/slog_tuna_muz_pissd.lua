att.PrintName = "Osprey Suppressor"
att.Icon = Material("entities/slog_tuna_muz_pissd.png", "mips smooth")
att.Description = "Rectangular pistol suppressor."

att.SortOrder = 2

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_muzzle_pist"}

att.SortOrder = 15

att.Model = "models/weapons/arccw/slog_osi_suck/att/muz_pissd.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 1
att.Mult_ShootVol = 0.75
att.Mult_AccuracyMOA = 0.8
att.Mult_Range = 1.1

att.Mult_SightTime = 1.1
att.Mult_HipDispersion = 1.15

att.Add_BarrelLength = 8

att.Override_MuzzleEffectAttachment = 1

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then return false end
end