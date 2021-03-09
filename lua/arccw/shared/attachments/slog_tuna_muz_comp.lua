att.PrintName = "Compensator"
att.Icon = Material("entities/slog_tuna_muz_comp.png", "mips smooth")
att.Description = "Muzzle device that redirects firing gases to help stabilize recoil."

att.SortOrder = 1

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_muzzle_pist"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/muz_comp.mdl"

att.IsMuzzleDevice = false -- for now

att.Add_BarrelLength = 2

att.Mult_ShootPitch = 0.9

att.Mult_SightTime = 1.05

att.Mult_MoveSpeed = 0.95

att.Mult_RecoilSide = 0.85