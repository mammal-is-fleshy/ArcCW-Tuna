att.PrintName = "Tac Laser"
att.Icon = Material("entities/slog_tuna_las_4.png", "mips smooth")
att.Description = "Blue laser pointer. Improves hip-fire accuracy."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_tac"}
att.Hidden = true

att.Model = "models/weapons/arccw/slog_osi_suck/att/laser_peq.mdl"

att.Laser = true
att.LaserStrength = 5
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(0, 225, 225)}

att.Mult_HipDispersion = 0.65
att.Mult_MoveDispersion = 0.65
att.Mult_SightTime = 0.9

att.Mult_MoveSpeed = 0.95

att.ModelScale = Vector(1.1, 1.1, 1.1)
att.ModelOffset = Vector(0, 0, 0)