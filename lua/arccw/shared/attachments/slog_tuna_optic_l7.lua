att.PrintName = "L7 (Reflex)"
att.Icon = Material("entities/slog_tuna_optic_l7.png", "mips smooth")
att.Description = "Relfex sight for small arms."

att.SortOrder = 0.25

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic","fortuna_optic_s"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/l7.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.75),
        Ang = Angle(0, 0, 0),
        Magnification = 1.125,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/braces.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 4.5
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.0125

att.ModelOffset = Vector(0, 0, 0.1)