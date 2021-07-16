SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "FR-80"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Advance combat assault rifle based on relics of the old world."
SWEP.Trivia_Manufacturer = "XLR Munitions"
SWEP.Trivia_Country = "Staglagh"
SWEP.Trivia_Calibre = "4.8x35mm"
SWEP.Trivia_Year = "2182"

SWEP.TrueName = "Baguette Rifle"
SWEP.True_Country = "Elba"
SWEP.True_Manufacturer = "insert france surrdender joke here cutting room floor that way"
SWEP.True_Class = "KoknsSACK"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-0.5, 2.5, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_french.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_french.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 42
SWEP.DamageMin = 32 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1200 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 4

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 26 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 1.25

SWEP.Recoil = 0.675
SWEP.RecoilSide = 0.025
SWEP.RecoilRise = 0.8
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 1020 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = -3,
        RunawayBurst = true,
        PostBurstDelay = 0.2,
		AutoBurst = true,		
    },
	    {
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 0.75 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 275 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "ar2" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/rifle/fire4.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rifle/fire4sd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.375

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 27

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.341, 5, 0.319),
    Ang = Angle(0, 0, -5),
    Magnification = 1.1,
    SwitchToSound = "",
}

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, 5, -1)
SWEP.HolsterAng = Angle(-5, 30, -20)

SWEP.CustomizePos = Vector(6, 2, -0.5)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 2

SWEP.AttachmentElements = {		
    ["iron_no"] = {VMBodygroups = {{ind = 1, bg = 1},},},
    ["rail1"] = {VMBodygroups = {{ind = 2, bg = 1},},},
    ["rail2"] = {VMBodygroups = {{ind = 3, bg = 1},},},	
}

SWEP.WorldModelOffset = {
    pos = Vector(-9, 6, -4),
    ang = Angle(-10, 0, 180-5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic",
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -4.5, 2), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"iron_no"},		
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "fortuna_muzzle",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.75, 19.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, 0.8, 9),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"rail1"},		
    },	
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(-1, -1.05, 8), 
            vang = Angle(90, 0, 180),
        },
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.75, 3, 0),	
        InstalledEles = {"rail2"},			
    },
    {
        PrintName = "Ammo Type",
        Slot = {"fortuna_ammo"}
    },
    {
        PrintName = "Perk",
        Slot = {"fortuna_perk"}
    },
}

SWEP.Animations = {
	["idle"] = {Source = "idle",},
    ["ready"] = {
        Source = "draw",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire",
		Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "iron",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.3,		
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
		MinProgress = 72/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/rifle/foley.wav", 		t = 0/40},					
						{s = "weapons/arccw_slog/fortuna/rifle/4out.wav", 			t = 35/40},
						{s = "weapons/arccw_slog/fortuna/rifle/foley2.wav", 		t = 16/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/4in.wav", 			t = 58/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/foley3.wav", 		t = 82/40},						
					},				
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.8,
        LHIKEaseIn = 0.3,	
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4,
		MinProgress = 96/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/rifle/foley.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/rifle/4bolt1.wav", 		t = 11/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/4out.wav", 			t = 52/40},
						{s = "weapons/arccw_slog/fortuna/rifle/foley2.wav", 		t = 27/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/4in.wav", 			t = 75/40},
						{s = "weapons/arccw_slog/fortuna/rifle/4bolt2.wav", 		t = 90/40},							
						{s = "weapons/arccw_slog/fortuna/rifle/foley3.wav", 		t = 103/40},						
					},			
    },	
}