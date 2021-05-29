att.PrintName = "Muzzle Brake"
att.Icon = Material("entities/slog_tuna_muz_brake.png", "mips smooth")
att.Description = "Muzzle device that redirect gas sideways. Decreases horizontal recoil but increases that of vertical."

att.SortOrder = 1

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_muzzle"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/muz_brake.mdl"

att.IsMuzzleDevice = true

att.Add_BarrelLength = 2

att.Mult_ShootPitch = 0.9

att.Mult_SightTime = 1.025

att.Mult_MoveSpeed = 0.975

att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 0.65
att.Mult_VisualRecoilMult = 1.2

att.Mult_RPM = 0.9

att.ModelOffset = Vector(0, 0, 0)