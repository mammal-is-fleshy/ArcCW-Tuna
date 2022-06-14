att.PrintName = "L45 (Reflex)"
att.Icon = Material("entities/slog_tuna_optic_l45.png", "mips smooth")
att.Description = "Close range reflex sight."

att.SortOrder = 0.75

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/l45.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -0.95),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/shotgun.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 4.5
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.025