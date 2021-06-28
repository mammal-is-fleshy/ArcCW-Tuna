att.PrintName = "B42 (3x)"
att.Icon = Material("entities/slog_tuna_optic_b42.png", "mips smooth")
att.Description = "CQC combat scope with backup irons."

att.SortOrder = 3

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/b42.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 13, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.175,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 15, -3.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("slog_tuna_reticle/combat.png", "mips smooth"),
            HolosightSize = 3,
            Colorable = true,
            HolosightNoHSP = true
        },		
        ScrollFunc = ArcCW.SCROLL_NONE
    },	
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/4x.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 8.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/slog_osi_suck/att/b42_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightMagnification = 2.5
att.HolosightMagnificationMin = 2.5
att.HolosightMagnificationMax = 5

att.Mult_SightTime = 1.055
att.Mult_SightedSpeedMult = 0.975

att.ModelOffset = Vector(0, 0, -0.1)

att.ModelScale = Vector(1.25, 1.25, 1.25)