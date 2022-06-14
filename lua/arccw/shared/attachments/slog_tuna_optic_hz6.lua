att.PrintName = "HZ6 (2.5-6x)"
att.Icon = Material("entities/slog_tuna_optic_hz6.png", "mips smooth")
att.Description = "Mid range tactical combat scope."

att.SortOrder = 6

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/hz6.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 9, -1.185),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = true,
    }
}

att.ScopeGlint = true
att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/6x.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 14
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/slog_osi_suck/att/hz6_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightMagnification = 1.5
att.HolosightMagnificationMin = 2.5
att.HolosightMagnificationMax = 6

att.Mult_SightTime = 1.125
att.Mult_SightedSpeedMult = 0.92

att.ModelOffset = Vector(0, 0, -0.1)


att.ModelScale = Vector(1.25, 1.25, 1.25)