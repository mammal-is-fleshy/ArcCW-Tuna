att.PrintName = "Compensator"
att.Icon = Material("entities/slog_tuna_muz_acc.png", "mips smooth")
att.Description = "Special muzzle device built to sustain upwards recoil. Quite unstable."

att.SortOrder = 2

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_muzzle"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/muz_acc.mdl"

att.IsMuzzleDevice = true

att.Add_BarrelLength = 6

att.Mult_ShootPitch = 1.25

att.Mult_SightTime = 1.15

att.Mult_MoveSpeed = 0.925

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 1.25
att.Mult_VisualRecoilMult = 0.85

att.Mult_RPM = 1.125
att.ModelOffset = Vector(0, 0, 0.1)

att.GivesFlags = {"muz_long"}
att.ExcludeFlags = {"tac_short"}