att.PrintName = "Colossal Suppressor"
att.Icon = Material("entities/slog_tuna_muz_sgsd.png", "mips smooth")
att.Description = "Heavy suppressor issues for heavy weapons."

att.SortOrder = 2

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_muzzle"}

att.SortOrder = 20

att.Model = "models/weapons/arccw/slog_osi_suck/att/muz_sgsd.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 0.885
att.Mult_ShootVol = 0.65
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25

att.Mult_SightTime = 1.25
att.Mult_HipDispersion = 0.95

att.Add_BarrelLength = 10

att.Override_MuzzleEffectAttachment = 1

att.ModelOffset = Vector(0, 0, 0.15)


att.GivesFlags = {"muz_long"}
att.ExcludeFlags = {"tac_short"}