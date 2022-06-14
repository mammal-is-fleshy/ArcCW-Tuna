att.PrintName = "C75 (4x/1x)"
att.Icon = Material("entities/slog_tuna_optic_c75.png", "mips smooth")
att.Description = "Mid range hybrid scope with backup reflex."

att.SortOrder = 4

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Double press +USE to toggle sights"
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/c75.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 9.5, -2.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScopeMagnification = 4,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 4,
            HolosightReticle = Material("slog_tuna_reticle/3x.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 13,
            HolosightBlackbox = true,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/slog_osi_suck/att/c75_hsp.mdl"
        },
    },
    {
        Pos = Vector(0, 10, -4.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,		
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("slog_tuna_reticle/top.png", "mips smooth"),
            HolosightSize = 5,
            Colorable = true,
            HolosightNoHSP = true
        },	
    },	
}

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/slog_osi_suck/att/c75_hsp.mdl"

att.ScopeGlint = true

att.Mult_SightTime = 1.075
att.Mult_SightedSpeedMult = 0.95

att.ModelOffset = Vector(0, 0, -0.08)

att.ModelScale = Vector(1.25, 1.25, 1.25)

att.ColorOptionsTable = {
    Color(255, 50, 50),
    Color(50, 255, 50)
}