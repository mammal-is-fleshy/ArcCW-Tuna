SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Raptor-67"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Double barrel combat shotgun made for longer range."
SWEP.Trivia_Manufacturer = "SRL Armory"
SWEP.Trivia_Country = "Warthed Depths"
SWEP.Trivia_Calibre = "14 EXG"
SWEP.Trivia_Year = "2162"

SWEP.TrueName = "longys and guilles boþe"
SWEP.True_Country = "þe water and on londe"
SWEP.True_Manufacturer = "dyuers coloures"
SWEP.True_Class = "A frogge may been founde in all contynens excepte Antartika."
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 3

SWEP.CrouchPos = Vector(-1, 4, -1)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 170

SWEP.CamAttachment = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_bosg.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_bosg.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 25
SWEP.DamageMin = 7 -- damage done at maximum range
SWEP.Range = 80 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1200 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 5

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 2 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 2
SWEP.RecoilSide = 4
SWEP.RecoilRise = 1.5
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 350 -- 60 / RPM.
SWEP.Num = 12 -- number of shots per trigger pull.

SWEP.Firemodes = {
	{
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 3

SWEP.AccuracyMOA = 40 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 220

SWEP.Primary.Ammo = "357" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/shotgun/fire2.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rev/fire_sd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1

SWEP.SightTime = 0.2

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75
SWEP.BarrelLength = 27

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.141, 3, 1.501),
    Ang = Angle(-0.22, 0, -10),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 5, 1)
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
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -2.6, 3), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"iron_no"},	
		ExtraSightDist = 4,			
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
		Slot = "fortuna_muzzle_db",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.4, 16),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Grip",
        Offset = {
            vpos = Vector(0, -0.1, 0),
            vang = Angle(90, 0, -90),
        },
    },		
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.2, -0.95, 15), 
            vang = Angle(90, 0, 0),
        },
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.75, 3, 0),					
    },
    {
        PrintName = "Ammo Type",
        Slot = {"fortuna_ammo_sg"}
    },
    {
        PrintName = "Perk",
        Slot = {"fortuna_perk"}
    },		
}

SWEP.Animations = {
	["idle"] = {Source = "idle",},
    ["draw"] = {
        Source = "draw",
        LHIK = true,	
        LHIKIn = 0,
        LHIKOut = 0.45,
        LHIKEaseOut = 0.2,	
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "fire",
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = false,		
		MinProgress = 73/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/shotgun/foley1.wav", 		t = 0/40},	
						{s = "weapons/arccw_slog/fortuna/shotgun/pump3.wav", 		t = 8/40},	
						{s = "weapons/arccw_slog/fortuna/shotgun/in2.wav", 			t = 38/40},	
						{s = "weapons/arccw_slog/fortuna/shotgun/pump2d.wav", 		t = 68/40},	
						{s = "weapons/arccw_slog/fortuna/shotgun/foley2.wav", 		t = 76/40},							
					},			
    },
}