att.PrintName = "Tac Knife"
att.Icon = Material("entities/slog_tuna_las_knife.png", "mips smooth")
att.Description = "Underbarrel Knife for CQC engagement."
att.SortOrder = 2
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_tac_pistol", "fortuna_knife_muz"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/laser_knife.mdl"

att.Mult_SightTime = 1.05

att.Mult_MoveSpeed = 0.95

att.Mult_MeleeDamage = 2

att.Add_BarrelLength = 3

att.Mult_MeleeTime = 0.9

att.Add_MeleeRange = 16

att.Override_BashPreparePos = Vector(2, -2, -2.6)
att.Override_BashPrepareAng = Angle(8, 4, 5)
att.Override_BashPos = Vector(1.2, 12, -1.8)
att.Override_BashAng = Angle(4, 6, 0)


att.ExcludeFlags = {"muz_long"}
att.GivesFlags = {"tac_short"}