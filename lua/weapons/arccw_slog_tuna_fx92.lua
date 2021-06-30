SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "FX-92"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Bulky explosive specialist weapon for barrage and flank, a two in one package."
SWEP.Trivia_Manufacturer = "XLR Munitions"
SWEP.Trivia_Country = "Staglagh"
SWEP.Trivia_Calibre = "4.8x35mm"
SWEP.Trivia_Year = "2185"

SWEP.TrueName = "Salmon"
SWEP.True_Country = "Salt Lake City"
SWEP.True_Manufacturer = "Medium Rare Arms"
SWEP.True_Class = "Fish"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-0.5, 1.5, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_fx92.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_fx92.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 39
SWEP.DamageMin = 21 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 950 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 40 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2.5

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.8
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 700 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(5, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 1.125)

    return delay / mult
end

SWEP.Firemodes = {
    {
        Mode = 2,
    },
	    {
        Mode = -3,
		Mult_RPM = 2,
		AutoBurst = true,		
    },	
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 3

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 420 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "smg1" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/rifle/2fire.mp3"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rifle/2firesd.mp3"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 1.15

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.325

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.65

SWEP.BarrelLength = 22

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.889, 2, 0.479),
    Ang = Angle(0, 0, 2.5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 2, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0.5, 3.247, 0.239)
SWEP.HolsterAng = Angle(-13.101, 15, -16.496)
SWEP.SprintPos = Vector(0, 5, 0)
SWEP.SprintAng = Angle(0, 0, 0)
SWEP.CustomizePos = Vector(3, 0, 0.5)
SWEP.CustomizeAng = Angle(15, 17, 12)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {		
    ["slog_tuna_specialist_fx92"] = {
	---Override_SprintPos = Vector(-0.5, 3.247, 0.239),
	---Override_SprintAng = Angle(-13.101, 15, -16.496),
    },	
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-8, 5, -6),
    ang = Angle(-10, 0, 180-2.5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic",
        Bone = "Weapon_Main", 
        Offset = {
            vpos = Vector(0, -6.1, 2), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"iron_no"},		
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "fortuna_muzzle",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -1.65, 21.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -0.5, 12),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },	
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0.5, -1.5, 12), 
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
        Slot = {"slog_tuna_specialist_fx92"},
		Integral = true,
		Hidden = true,
		Installed = "slog_tuna_specialist_fx92",	
    },		
}

SWEP.Hook_TranslateAnimation = function(wep, anim)		
    if wep.Attachments[7].Installed == "slog_tuna_specialist_fx92" and wep:GetInUBGL() then
        return anim .. "_gl"
    end
end


SWEP.Animations = {
	["idle"] = {Source = "idle",},
	["idle_sprint"] = {Source = "sprint", Time = 26/40}, -- this is extended, the default is 24/40 yes i animate at 40 shut up
	["enter_sprint"] = {Source = "sprint_in", Time = 15/40,},	
	["exit_sprint"] = {Source = "sprint_out", Time = 20/40,},		
	["idle_gl"] = {Source = "nade_idle",},	

	["idle_sprint_gl"] = {Source = "sprint", Time = 26/40},
	["enter_sprint_gl"] = {Source = "sprint_in_gl", Time = 15/40,},	
	["exit_sprint_gl"] = {Source = "sprint_out_gl", Time = 20/40,},
	
    ["enter_ubgl"] = {Source = "rif2nade",},		
    ["exit_ubgl"] = {Source = "nade2rif",},		
	
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
    ["fire_gl"] = {
        Source = "nade_fire",
        ShellEjectAt = 0,
    },	
    ["fire_iron"] = {
        Source = "idle",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.4,
		MinProgress = 90/40,
		Mult = 0.9,
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
		MinProgress = 140/40,
		Mult = 0.9,		
    },	

    ["oicw_dry"] = {
        Source = "nade_dry",	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5, 
    },		
    ["oicw_wet"] = {
        Source = "nade_wet",	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
    },		
}