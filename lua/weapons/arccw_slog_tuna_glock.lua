SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "HL-887"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "Compact 3 round burst machine pistol, the latest addition to the frontier."
SWEP.Trivia_Manufacturer = "SRL Corp"
SWEP.Trivia_Country = "Vrenzie"
SWEP.Trivia_Calibre = "9x19mm"
SWEP.Trivia_Year = "2190"

SWEP.TrueName = "Wombat poop"
SWEP.True_Country = "Poeacker"
SWEP.True_Manufacturer = "northern ireland"
SWEP.True_Class = "Wom"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 1

SWEP.CrouchPos = Vector(-1, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_hl877.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_hl877.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 25
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.Range = 30 -- in METRES
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 950 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 35 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 1.5

SWEP.Recoil = 0.55
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.25
SWEP.VisualRecoilMult = 0.65

SWEP.Delay = 60 / 800 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = -3,
        RunawayBurst = true,
        PostBurstDelay = 0.2,		
		AutoBurst = true,		
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 8 
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100

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

SWEP.SightTime = 0.225

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.65

SWEP.BarrelLength = 12

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.3, -3, 0.68),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", 	
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-4, 5, -6),
        Ang = Angle(0, 10, -45),
    },	
}

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, -1, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, 2, -1)
SWEP.HolsterAng = Angle(-5, 30, -20)

SWEP.CustomizePos = Vector(7, -2, -1)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.ShellRotateAngle = Angle(5, 0, 70)

SWEP.ExtraSightDist = 2.5

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },
    ["rail_yes"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-8.5, 5, -3),
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
            vpos = Vector(0, -4.65, 2), 
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
            vpos = Vector(0, -3.3, 8.5),
            vang = Angle(90, 0, -90),
        },
    },	
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac_pistol",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -2.2, 7.5), 
            vang = Angle(90, 0, -90),
        },
        ExtraSightDist = 10,
        InstalledEles = {"rail_yes"},		
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
        LHIKIn = 0.2,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/pistol/foley1.wav", 		t = 0/60},
						{s = "weapons/arccw_slog/fortuna/pistol/out.wav", 		t = 10/60},
						{s = "weapons/arccw_slog/fortuna/smg/in.wav", 		t = 47/60},
						{s = "weapons/arccw_slog/fortuna/pistol/foley3.wav", 		t = 60/60},						
					},		
		Mult = 4/6,
		MinProgress = 60/40			
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/pistol/foley1.wav", 		t = 0/60},
						{s = "weapons/arccw_slog/fortuna/pistol/out.wav", 		t = 10/60},
						{s = "weapons/arccw_slog/fortuna/smg/in.wav", 		t = 47/60},
						{s = "weapons/arccw_slog/fortuna/smg/bolt1.wav", 		t = 81/60},						
						{s = "weapons/arccw_slog/fortuna/pistol/foley3.wav", 		t = 100/60},						
					},			
		Mult = 4/6,		
		MinProgress = 97/40			
    },	
}