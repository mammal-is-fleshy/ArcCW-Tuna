att.PrintName = "F52 (Reflex)"
att.Icon = Material("entities/slog_tuna_optic_f52.png", "mips smooth")
att.Description = "Compact automatic folding sight."

att.SortOrder = 0.75

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_optic", "fortuna_optic_s"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/f52.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("slog_tuna_reticle/crotchets.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 3
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.025

att.ModelScale = Vector(1.35, 1.35, 1.35)
att.ModelOffset = Vector(0, 0, -0.1)

att.DrawFunc = function(wep, element, wm)
    if wm then return end
    if wep:GetState() == ArcCW.STATE_SIGHTS then
        element.Model:ResetSequence(1)
    else
        element.Model:ResetSequence(0)
    end
end