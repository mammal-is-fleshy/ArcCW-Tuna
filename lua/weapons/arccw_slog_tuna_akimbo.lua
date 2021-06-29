SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Commando-97"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Pistol and Revolver combo. Only for the most ambidextrous"
SWEP.Trivia_Manufacturer = "DRS Arms"
SWEP.Trivia_Country = "Vrenzie"
SWEP.Trivia_Calibre = ".45MBG / 10x12mm"
SWEP.Trivia_Year = "2150"

SWEP.TrueName = "Famous cartoon KimPossible"
SWEP.True_Country = "CHEESE"
SWEP.True_Manufacturer = "Down this hoe"
SWEP.True_Class = "Wangous"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 1

SWEP.CrouchPos = Vector(0, 1, -0.25)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_akimbo.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_akimbo.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 62
SWEP.DamageMin = 32 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 6
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 950 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 
SWEP.Primary.ClipSize = 8 
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 1.25
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 700 -- 60 / RPM.
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

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "pistol" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/pistol/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/pistol/sd.wav"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/pistol/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_pistol.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.2

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 14

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-0.89, 3, 1.46),
    Ang = Angle(0, 0, 10),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(1, 3, 1.36)
SWEP.HolsterAng = Angle(-9.551, 20, -15)

SWEP.CustomizePos = Vector(8, 2, 3)
SWEP.CustomizeAng = Angle(0, 23.763, 29.01)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 7

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-5, 2, -4),
    ang = Angle(-10, 0, 180+10)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic_s",
        Bone = "W_Bolt", 
        Offset = {
            vpos = Vector(0, -0.75, -0.5), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"iron_no"},		
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "fortuna_muzzle_pist",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -2.15, 6.75),
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
    {
        PrintName = "Perk",
        Slot = {"fortuna_perk"}
    },
    {
        PrintName = "You aren't supposed to see this",
        Slot = {"slog_tuna_specialist_akimbo"},
		Integral = true,
		Hidden = true,
		Installed = "slog_tuna_specialist_akimbo",	
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
        Source = "fire_lug",
        ShellEjectAt = 0,
    },
    ["fire_2"] = {
        Source = "fire_rev",
        ShellEjectAt = 0,
    },	
    ["reload"] = {
        Source = "wet_lug",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		MinProgress = 61/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/pistol/foley1.wav", 		t = 0/60},
						{s = "weapons/arccw_slog/fortuna/pistol/out.wav", 		t = 8/40},
						{s = "weapons/arccw_slog/fortuna/pistol/in1.wav", 		t = 47/40},
						{s = "weapons/arccw_slog/fortuna/pistol/in2.wav", 		t = 55/40},
						{s = "weapons/arccw_slog/fortuna/pistol/foley3.wav", 		t = 70/40},						
					},			
    },
    ["reload_empty"] = {
        Source = "dry_lug",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		MinProgress = 86/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/pistol/foley1.wav", 		t = 0/60},
						{s = "weapons/arccw_slog/fortuna/pistol/out.wav", 		t = 8/40},
						{s = "weapons/arccw_slog/fortuna/pistol/in1.wav", 		t = 47/40},
						{s = "weapons/arccw_slog/fortuna/pistol/in2.wav", 		t = 55/40},
						{s = "weapons/arccw_slog/fortuna/pistol/bolt1.wav", 		t = 75/40},
						{s = "weapons/arccw_slog/fortuna/pistol/bolt2.wav", 		t = 86/40},						
						{s = "weapons/arccw_slog/fortuna/pistol/foley3.wav", 		t = 94/40},						
					},		
    },
    ["dry_rev"] = {
        Source = "dry_rev",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		MinProgress = 55/40		
    },
    ["dry_lug_rev"] = {
        Source = "dry_lug_rev",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		MinProgress = 90/40		
    },	
    ["wet_lug_rev"] = {
        Source = "wet_lug_rev",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		MinProgress = 90/40		
    },		
}