SWEP.Base = "arccw_base"
SWEP.Spawnable = false -- trolololololo
SWEP.AdminOnly = false

SWEP.PrintName = "you arent supposed to see this"

SWEP.Slot = 0

SWEP.DefaultBodygroups = "4"

SWEP.CrouchPos = Vector(-0.5, 4, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/w_npc_ex.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_awrx6.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 18
SWEP.DamageMin = 10 -- damage done at maximum range
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
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2.5

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.275
SWEP.RecoilRise = 0.5
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = -math.random(4, 12),
		PostBurstDelay = 0.025		
    },
	    {
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 35 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 480 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 320

SWEP.Primary.Ammo = "smg1" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/npc/rif2.ogg"
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

SWEP.IronSightStruct = {
    Pos = Vector(-3.5, 2.4, 0.159),
    Ang = Angle(0, 0, 5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"

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
    pos = Vector(2,1,-0.5),
    ang = Angle(-10, 0, 180-2.5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true


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