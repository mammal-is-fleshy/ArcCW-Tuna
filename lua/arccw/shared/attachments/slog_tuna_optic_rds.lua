att.PrintName = "RZ7 (RDS)"
att.Icon = Material("entities/slog_tuna_optic_rds.png", "mips smooth")
att.Description = "Cylindrel combat sight."

att.SortOrder = 0.75

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/rds.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 8, -0.95),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/rds.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 4
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.05

att.ModelScale = Vector(0.85, 0.85, 0.85)

att.ModelOffset = Vector(0.35, 0, 0)