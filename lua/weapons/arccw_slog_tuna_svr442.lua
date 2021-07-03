SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Adler-442"
SWEP.Trivia_Class = "Designated Marksman Rifle"
SWEP.Trivia_Desc = "Carbine revolver with extra long cartridge."
SWEP.Trivia_Manufacturer = "SRL Corp"
SWEP.Trivia_Country = "Rifted Shore"
SWEP.Trivia_Calibre = ".44-42 EX"
SWEP.Trivia_Year = "2162"

SWEP.TrueName = "Axololt"
SWEP.True_Country = "Ocean"
SWEP.True_Manufacturer = "Mental Rear  H A R D"
SWEP.True_Class = "Long Gun"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 3

SWEP.CrouchPos = Vector(-1, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 170

SWEP.CamAttachment = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_svr442.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_svr442.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 38
SWEP.DamageMin = 120 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 17
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1500 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 1.5
SWEP.RecoilSide = 1.25
SWEP.RecoilRise = 1.5
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 350 -- 60 / RPM.
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

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 420 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "357" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/rev/fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rev/fire_sd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1

SWEP.SightTime = 0.225

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 27

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.681, 3, 1.319),
    Ang = Angle(0, 0, -5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0.5, 5, -1)
SWEP.HolsterAng = Angle(-5, 15, -16.496)

SWEP.CustomizePos = Vector(5, 5, 0)
SWEP.CustomizeAng = Angle(10 , 21.236, 17)

SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-1, 4, -5),
    ang = Angle(-10, 0, 180-5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic",
        Bone = "W_Slide", 
        Offset = {
            vpos = Vector(0, -0.2, 0), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"iron_no"},	
		ExtraSightDist = 4,			
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "fortuna_muzzle",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -2.1, 20),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1, 12),
            vang = Angle(90, 0, -90),
        },
    },		
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.25, 4.5), 
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.75, 3, 0),					
    },
    {
        PrintName = "Ammo Type",
        Slot = {"fortuna_ammo"}
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
		Time = 0.6,
    },
    ["fire_iron"] = {
        Source = "iron",
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,		
		MinProgress = 90/40,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3		
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,		
		MinProgress = 90/40,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3	
    },	
}