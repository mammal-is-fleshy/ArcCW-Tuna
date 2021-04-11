SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Borus-27"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "Single shot bolt action sniper rifle."
SWEP.Trivia_Manufacturer = "DS Arms"
SWEP.Trivia_Calibre = "45x25mm"
SWEP.Trivia_Country = "Unknown"
SWEP.Trivia_Year = "2174"

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-1, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_borus.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_borus.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 65
SWEP.DamageMin = 180 -- damage done at maximum range
SWEP.Range = 70 -- in METRES
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET + DMG_BLAST + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1500 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 5

SWEP.Recoil = 2
SWEP.RecoilSide = 2
SWEP.RecoilRise = 1.5
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 570 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
	{
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 0.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 520 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "ar2" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/snip/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/snip/sd.wav"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.275

SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.65

SWEP.BarrelLength = 32

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.441, -1, 0.519),
    Ang = Angle(0.945, 0, -5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-2.8, 3.247, 0.239)
SWEP.HolsterAng = Angle(-13.101, 7.586, -16.496)

SWEP.CustomizePos = Vector(4, -2, 1)
SWEP.CustomizeAng = Angle(0 , 21.236, 17)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 2.5

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-4.8, 5.5, -4.5),
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
            vpos = Vector(0, -4.1, 1.25), 
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
            vpos = Vector(0, -3.1, 17),
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
        Slot = {"ammo_bullet"}
    },
    {
        PrintName = "Perk",
        Slot = {"perk"}
    },	
    {
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = {"charm"},
        Bone = "Weapon_Bolt",
        Offset = {
            vpos = Vector(0.5, 0.2, 2),
            vang = Angle(90, 0, -90),
            wpos = Vector(8, 1, -3),
            wang = Angle(-9, 0, 180)
        },
		FreeSlot = true,
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
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "idle",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
    },	
}