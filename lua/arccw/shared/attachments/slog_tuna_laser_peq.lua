att.PrintName = "Compact Laser"
att.Icon = Material("entities/slog_tuna_las_peq.png", "mips smooth")
att.Description = "Red laser pointer. Improves hip-fire accuracy."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_tac"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/laser_peq.mdl"

att.Laser = true
att.LaserStrength = 0.8
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 0, 0)}

att.Mult_HipDispersion = 0.75
att.Mult_MoveDispersion = 0.75
att.Mult_SightTime = 0.9

att.Mult_MoveSpeed = 0.95

att.ModelScale = Vector(1.2, 1.2, 1.2)
att.ModelOffset = Vector(0, 0, 0)