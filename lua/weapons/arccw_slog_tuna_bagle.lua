SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Omega-75D"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Integrally suppressed sidearm. Highest punch in the pistol group. Comes with a knife for CQC."
SWEP.Trivia_Manufacturer = "SRL Corp"
SWEP.Trivia_Country = "Vrenzie"
SWEP.Trivia_Calibre = ".75MBG"
SWEP.Trivia_Year = "2171"

SWEP.TrueName = "A Brand New Colonizer"
SWEP.True_Country = "northbotten"
SWEP.True_Manufacturer = "cheese n balls"
SWEP.True_Class = "Owl is better than eagle"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end
SWEP.NoHideLeftHandInCustomization = true

SWEP.Slot = 1

SWEP.CrouchPos = Vector(-1.5, 0, -2)
SWEP.CrouchAng = Angle(0, 0, -20)

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_bagle.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/w_bagle.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 85
SWEP.DamageMin = 47 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 800 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 2

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 9 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 2
SWEP.RecoilSide = 1.5
SWEP.RecoilRise = 1.25
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 370 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 3

SWEP.AccuracyMOA = 0.8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 270 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 370

SWEP.Primary.Ammo = "357" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/pistol/2firesd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/pistol/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_pistol.mdl"
SWEP.ShellScale = 1.5
SWEP.Suppressor = true

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.3

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.625

SWEP.BarrelLength = 14

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.64, 0, 0.639),
    Ang = Angle(0, 0, -10),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-2, 2, -1)
SWEP.HolsterAng = Angle(-15, 10, -20)

SWEP.CustomizePos = Vector(4, -2, -5)
SWEP.CustomizeAng = Angle(20, 10, 10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(-5, 0, 80)

SWEP.ExtraSightDist = 2

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic_s",
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -3.75, 3.2), 
            vang = Angle(90, 0, -90),
            wpos = Vector(7, 1, -5),
            wang = Angle(-10.216, 0, 180)			
        },			
        InstalledEles = {"iron_no"},		
    },
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac_pistol",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.9, 3.25), 
            vang = Angle(90, 0, -90),
            wpos = Vector(7.8, 1, -3.2),
            wang = Angle(-10.216, 0, 180)				
        },
        CorrectivePos = Vector(1, 0, 0.2),		
		ExcludeFlags = {"tac_short"}	
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
    ["idle"] = false,
    ["ready"] = {
        Source = "draw",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {36, 57, 77},
        FrameRate = 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,		
        LHIKEaseOut = 0.4,
		MinProgress = 55/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/pistol/foley2.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/pistol/2out.wav", 			t = 11/40},	
						{s = "weapons/arccw_slog/fortuna/pistol/2foley2.wav", 		t = 26/40},
						{s = "weapons/arccw_slog/fortuna/pistol/2foley3.wav", 		t = 43/40},	
						{s = "weapons/arccw_slog/fortuna/pistol/2in.wav", 			t = 50/40},							
						{s = "weapons/arccw_slog/fortuna/pistol/foley3.wav", 		t = 79/40},						
					},		
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {36, 57, 77, 88},
        FrameRate = 60,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.4,
		MinProgress = 83/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/pistol/foley2.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/pistol/2out.wav", 			t = 11/40},	
						{s = "weapons/arccw_slog/fortuna/pistol/2foley2.wav", 		t = 26/40},
						{s = "weapons/arccw_slog/fortuna/pistol/2foley3.wav", 		t = 43/40},						
						{s = "weapons/arccw_slog/fortuna/pistol/2in.wav", 			t = 50/40},	
						{s = "weapons/arccw_slog/fortuna/pistol/2bolt.wav", 		t = 79/40},							
						{s = "weapons/arccw_slog/fortuna/pistol/foley3.wav", 		t = 91/40},						
					},			
    },	
    ["bash"] = {
        Source = {"melee"},
        LHIK = true,		
        LHIKIn = 0.35,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,			
    },		
}

SWEP.MeleeDamage = 90
SWEP.MeleeRange = 25

SWEP.MeleeTime = 0.5
SWEP.MeleeAttackTime = 0.1
SWEP.MeleeSwingSound = "weapons/foley/melee.wav"