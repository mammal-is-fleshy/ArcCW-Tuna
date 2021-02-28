att.PrintName = "Compact Laser"
att.Icon = Material("entities/slog_tuna_las_tac.png", "mips smooth")
att.Description = "Red laser pointer. Improves hip-fire accuracy."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_tac"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/laser_piss.mdl"

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
att.LaserStrength = 0.25
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 0, 0)}

att.Mult_HipDispersion = 0.75
att.Mult_MoveDispersion = 0.75
att.Mult_SightTime = 0.9

att.Mult_MoveSpeed = 0.95