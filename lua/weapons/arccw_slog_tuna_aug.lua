SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AICW-57"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Next line of infantry rifle. Comes with an antimatter option. Don't shoot it at your feet."
SWEP.Trivia_Manufacturer = "XLR Munitions"
SWEP.Trivia_Country = "Vrenzie"
SWEP.Trivia_Calibre = "5.7x35mm"
SWEP.Trivia_Year = "2190"

SWEP.TrueName = "that one horrible film about a dog on a train"
SWEP.True_Country = "TWAT"
SWEP.True_Manufacturer = "its pronouced thwaite"
SWEP.True_Class = "Kiwi Rifle"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-0.5, 4, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_aug.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_aug.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 32
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 950 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 4

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2.5

SWEP.Recoil = 0.725
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 1.25
SWEP.VisualRecoilMult = 0.75

SWEP.Delay = 60 / 720 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(10, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 1.25)

    return delay / mult
end

SWEP.Firemodes = {
    {
        Mode = 2,
    },
	    {
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 7 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 370 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "smg1" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/rifle/6fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rifle/6firesd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 1.15

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.375

SWEP.SpeedMult = 0.825
SWEP.SightedSpeedMult = 0.625

SWEP.BarrelLength = 20

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.488, 2, 0.501),
    Ang = Angle(0, 0, -5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 5, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0.5, 3.247, 0.239)
SWEP.HolsterAng = Angle(-13.101, 15, -16.496)

SWEP.CustomizePos = Vector(4, 2, 1)
SWEP.CustomizeAng = Angle(10 , 21.236, 17)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-3, 5, -6),
    ang = Angle(-10, 0, 180-2.5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic",
        Bone = "W_Barrel", 
        Offset = {
            vpos = Vector(-0.522438, -3, 3.9), -- very specific number
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
            vpos = Vector(0, -2.6, 14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.5, 9),
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
            vpos = Vector(0.95, -4, 7), 
            vang = Angle(90, 0, 0),
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
        Slot = {"slog_tuna_specialist_aicw"},
		Integral = true,
		Hidden = true,
		Installed = "slog_tuna_specialist_aicw",	
    },		
}

SWEP.Hook_TranslateAnimation = function(wep, anim)		
    if wep.Attachments[6].Installed == "slog_tuna_specialist_aicw" and wep:GetInUBGL() then
        return anim .. "_gl"
    end
end


SWEP.Animations = {
	["idle"] = false,
	["idle_ubgl"] = false,	
	
    ["enter_ubgl"] = {Source = "rif2nade",},		
    ["exit_ubgl"] = {Source = "nade2rif",},		
	
    ["fire_ubgl"] = {
        Source = "nade_fire",
        ShellEjectAt = 0,
    },	
	
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
    ["shot_fire"] = {
        Source = "shot_fire",
        ShellEjectAt = 0,	
    },	
    ["shot_last"] = {
        Source = "shot_last",
    },		
    ["fire_iron"] = {
        Source = "iron",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4,
		MinProgress = 77/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/rifle/foley.wav", 			t = 0/40},
						{s = "weapons/arccw_slog/fortuna/rifle/4bolt1.wav", 		t = 11/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/2out.wav", 			t = 13/40},
						{s = "weapons/arccw_slog/fortuna/rifle/foley2.wav", 		t = 27/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/3in.wav", 			t = 58/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/foley3.wav", 		t = 86/40},						
					},		
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4,
		MinProgress = 105/40,	
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/rifle/foley.wav", 			t = 0/40},
						{s = "weapons/arccw_slog/fortuna/rifle/4bolt1.wav", 		t = 11/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/2out.wav", 			t = 13/40},
						{s = "weapons/arccw_slog/fortuna/rifle/foley2.wav", 		t = 27/40},						
						{s = "weapons/arccw_slog/fortuna/rifle/3in.wav", 			t = 58/40},	
						{s = "weapons/arccw_slog/fortuna/ak/bolt1.wav", 			t = 85/40},							
						{s = "weapons/arccw_slog/fortuna/rifle/foley3.wav", 		t = 110/40},						
					},		
    },	

    ["oicw_dry"] = {
        Source = "nade_dry",	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/rifle/foley.wav", 			t = 0/40},
						{s = "weapons/arccw_slog/fortuna/rev/open.wav", 			t = 8/40},	
						{s = "weapons/arccw_slog/fortuna/rev/in.wav", 				t = 30/40},	
						{s = "weapons/arccw_slog/fortuna/rev/close.wav", 			t = 60/40},												
						{s = "weapons/arccw_slog/fortuna/rifle/foley3.wav", 		t = 110/40},						
					},			
    },			
}