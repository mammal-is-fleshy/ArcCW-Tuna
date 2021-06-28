att.PrintName = "C75 (4x/1x)"
att.Icon = Material("entities/slog_tuna_optic_hz6.png", "mips smooth")
att.Description = "Mid range hybrid scope with backup reflex."

att.SortOrder = 4

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/c75.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 13, -2.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 4,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 13, -4.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,		
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("slog_tuna_reticle/combat.png", "mips smooth"),
            HolosightSize = 3,
            Colorable = true,
            HolosightNoHSP = true
        },
        IgnoreExtra = true,		
    },	
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/long.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 9
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/slog_osi_suck/att/c75_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightMagnification = 2.5
att.HolosightMagnificationMin = 2.5
att.HolosightMagnificationMax = 5

att.Mult_SightTime = 1.075
att.Mult_SightedSpeedMult = 0.95

att.ModelOffset = Vector(0, 0, -0.08)

att.ModelScale = Vector(1.25, 1.25, 1.25)