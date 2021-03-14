att.PrintName = "Marksman Laser"
att.Icon = Material("entities/slog_tuna_optic_laser_fl7.png", "mips smooth")
att.Description = "Top mount pointer with irons for small arms."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_optic_s", "fortuna_optic"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/fl7.mdl"

att.Laser = true
att.LaserStrength = 2
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 0, 0)}

att.Mult_HipDispersion = 0.75
att.Mult_MoveDispersion = 0.75
att.Mult_SightTime = 1.15

att.Mult_MoveSpeed = 0.975

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -2.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.ModelScale = Vector(0.9, 0.9, 0.9)
att.ModelOffset = Vector(0.8, 0 ,-0.2)


att.Flashlight = true
att.FlashlightFOV = 75
att.FlashlightFarZ = 512 -- how far it goes
att.FlashlightNearZ = 1 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 255, 255)
att.FlashlightTexture = "effects/flashlight001"
att.FlashlightBrightness = 2
att.FlashlightBone = "laser"