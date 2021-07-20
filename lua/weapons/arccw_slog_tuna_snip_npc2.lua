SWEP.Base = "arccw_base"
SWEP.Spawnable = false -- trolololololo
SWEP.AdminOnly = false

SWEP.PrintName = "you arent supposed to see this"

SWEP.Slot = 0

SWEP.DefaultBodygroups = "5"

SWEP.CrouchPos = Vector(-0.5, 4, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/w_npc_ex.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_awrx6.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 120
SWEP.DamageMin = 80 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 950 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2.5

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.275
SWEP.RecoilRise = 0.5
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 80 -- 60 / RPM.
SWEP.Num = 5 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 1,	
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 0.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 0.5 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 0.5

SWEP.Primary.Ammo = "smg1" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/npc/rif.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rifle/2firesd.mp3"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 1.15

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.325

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.7

SWEP.BarrelLength = 22

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"

SWEP.WorldModelOffset = {
    pos = Vector(3,1,-0.5),
    ang = Angle(-10, 0, 180-2.5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "root",
		Integral = true,
		Hidden = true,
		Installed = "slog_tuna_laser_npc",			
        Offset = {
            vpos = Vector(0, 20, 2), 
            vang = Angle(0, -90, 0),
        },
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.75, 3, 0),					
    },	
}

SWEP.Animations = {
	["idle"] = false,
    ["draw"] = false,
    ["fire"] = {
        Source = "idle",
        TPAnim = ACT_HL2MP_GESTURE_FIRE_AR2,		
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "idle",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.4,
		MinProgress = 65/40
    },
    ["reload_empty"] = {
        Source = "idle",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
		MinProgress = 90/40			
    },	
}