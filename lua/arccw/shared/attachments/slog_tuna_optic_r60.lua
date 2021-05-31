att.PrintName = "R60 (Reflex)"
att.Icon = Material("entities/slog_tuna_optic_r60.png", "mips smooth")
att.Description = "Big reflex sight offers clarity."

att.SortOrder = 1

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/r60.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE,
        Thermal = true,
        ThermalHighlightColor = Color(255, 255, 0),		
    }
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/launcher.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 7
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.05

att.ModelScale = Vector(1.2, 1.2, 1.2)
att.ModelOffset = Vector(0, 0, 0.1)