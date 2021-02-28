att.PrintName = "Tac Laser"
att.Icon = Material("entities/slog_tuna_las_tac2.png", "mips smooth")
att.Description = "Blue laser pointer. Improves hip-fire accuracy."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_tac"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/laser_piss2.mdl"

att.KeepBaseIrons = true
att.AdditionalSights = {
    {
        Pos = Vector(-2, 10, -4), -- relative to where att.Model is placed
        Ang = Angle(0, 0, 20),
        GlobalPos = false,
        GlobalAng = true,
        Magnification = 1
    }
}

att.Laser = true
att.LaserStrength = 0.5
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(0, 0, 255)}

att.Mult_HipDispersion = 0.65
att.Mult_MoveDispersion = 0.65
att.Mult_SightTime = 0.9

att.Mult_MoveSpeed = 0.95

att.ModelScale = Vector(1.05, 1.05, 1.05)
att.ModelOffset = Vector(0.25, 0, 0)