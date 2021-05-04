att.PrintName = "Sandman Suppressor"
att.Icon = Material("entities/slog_tuna_muz_rif_sd.png", "mips smooth")
att.Description = "Combat suppressor issues for rifles."

att.SortOrder = 2

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_muzzle"}

att.SortOrder = 15

att.Model = "models/weapons/arccw/slog_osi_suck/att/muz_sup_rif.mdl"

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

att.ModelOffset = Vector(0, 0, 0.15)

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then return false end
end