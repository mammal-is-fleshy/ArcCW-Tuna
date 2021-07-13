att.PrintName = "Covert Laser"
att.Icon = Material("entities/slog_tuna_las_pistol.png", "mips smooth")
att.Description = "Pointer designed for pistol."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {"fortuna_tac_pistol"}

att.Model = "models/weapons/arccw/slog_osi_suck/att/laser_pistol.mdl"

att.Laser = true
att.LaserStrength = 0.75
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(0, 105, 225)}

att.KeepBaseIrons = true

att.Mult_MoveSpeed = 0.95

att.ModelScale = Vector(1, 1, 1)
att.ModelOffset = Vector(0.25, 0, -0.05)

att.ToggleStats = {
    {
        PrintName = "Laser",
        AutoStatName = "On",
        Laser = true,
		LaserColor = Color(255, 0, 0),
		Mult_HipDispersion = 0.75,
		Mult_MoveDispersion = 0.75,
		Mult_SightTime = 0.9,
		KeepBaseIrons = true,
        AdditionalSights = {
           {
               Pos = Vector(-2, 25, -4), -- relative to where att.Model is placed
               Ang = Angle(0, 0, -20),
               GlobalPos = false,
               GlobalAng = true,
               Magnification = 1
           }
       },
	},

    {
        PrintName = "Flashlight",
        AutoStatName = "On",
		Flashlight = true,
		FlashlightFOV = 60,
		FlashlightFarZ = 512,
		FlashlightNearZ = 1,
		Mult_HipDispersion = 0.8,
		Mult_MoveDispersion = 0.8,
		Mult_SightTime = 0.95,		
		FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR,
		FlashlightColor = Color(255, 255, 255),
		FlashlightTexture = "effects/flashlight001",
		FlashlightBrightness = 1.5,
		FlashlightBone = "laser",
		AdditionalSights = {
           {
               Pos = Vector(-2, 25, -4), -- relative to where att.Model is placed
               Ang = Angle(0, 0, -20),
               GlobalPos = false,
               GlobalAng = true,
               Magnification = 1
           }
       },
	},	

    {
        PrintName = "Off",
        Laser = false,
        Mult_HipDispersion = 1,
    }
}