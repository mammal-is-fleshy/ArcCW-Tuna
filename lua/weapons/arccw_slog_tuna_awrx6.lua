SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AWRX-6"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Breaching specialist weapon for frontier assault, a two in one package."
SWEP.Trivia_Manufacturer = "XLR Arms"
SWEP.Trivia_Calibre = "560x20mm"
SWEP.Trivia_Country = "Unknown"
SWEP.Trivia_Year = "2179"

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-0.5, 4, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_awrx6.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_awrx6.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 29
SWEP.DamageMin = 12 -- damage done at maximum range
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
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2.5

SWEP.Recoil = 0.35
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0.8
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 800 -- 60 / RPM.
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

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 450 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 210

SWEP.Primary.Ammo = "ar2" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw_slog/fortuna/rifle/3fire.ogg"
SWEP.ShootSound = "weapons/arccw_slog/fortuna/rifle/32fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rifle/2firesd.mp3"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.325

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.7

SWEP.BarrelLength = 22

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.5, 2.4, 0.159),
    Ang = Angle(0, 0, 5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

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
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -4.5, 3.5), 
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
            vpos = Vector(0, -2.95, 21),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.75, -2.75, 12), 
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
        Slot = {"slog_tuna_specialist_awrx6"},
		Integral = true,
		Hidden = true,
		Installed = "slog_tuna_specialist_awrx6",	
    },		
}

SWEP.Hook_TranslateAnimation = function(wep, anim)		
    if wep.Attachments[6].Installed == "slog_tuna_specialist_awrx6" and wep:GetInUBGL() then
        return anim .. "_gl"
    end
end


SWEP.Animations = {
	["idle"] = {Source = "idle",},
	["idle_ubgl"] = {Source = "shot_idle",},	
	
    ["enter_ubgl"] = {Source = "rif2shot",},		
    ["exit_ubgl"] = {Source = "shot2rif",},		
	
    ["fire_ubgl"] = {
        Source = "shot_fire",
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
		MinProgress = 65/40
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
		MinProgress = 90/40			
    },	

    ["oicw_dry"] = {
        Source = "shot_dry",	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5, 
    },		
    ["oicw_wet"] = {
        Source = "shot_wet",	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
    },		
}