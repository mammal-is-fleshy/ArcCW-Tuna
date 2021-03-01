att.PrintName = "HC7 (Holo)"
att.Icon = Material("entities/slog_tuna_optic_hc7.png", "mips smooth")
att.Description = "Mid range holographic sight."

att.SortOrder = 1

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/hc7.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/combat.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 5
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.075