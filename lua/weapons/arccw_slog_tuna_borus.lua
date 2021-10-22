SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Borus-27"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "Single shot bolt action sniper rifle. Anti-Armour, Anti-Infantry."
SWEP.Trivia_Calibre = "45x25mm"
SWEP.Trivia_Manufacturer = "Kreg Tech"
SWEP.Trivia_Country = "Waffensfer"
SWEP.Trivia_Year = "2174"

SWEP.TrueName = "Cow"
SWEP.True_Country = "Netherland"
SWEP.True_Manufacturer = "Animal Farm by George Orwell"
SWEP.True_Class = "Hunt Showdown 2"
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

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_borus.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_borus.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 75
SWEP.DamageMin = 180 -- damage done at maximum range
SWEP.Range = 100 -- in METRES
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
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
SWEP.RecoilSide = 4
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

SWEP.ShootSound = "weapons/arccw_slog/fortuna/snip/fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/snip/sd.wav"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 2

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

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 1, 0.239)
SWEP.HolsterAng = Angle(-13.101, 15, -16.496)

SWEP.CustomizePos = Vector(4, 5, 0)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

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
    pos = Vector(-4.8, 5, -4.5),
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
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.75, 7.5),
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
        Slot = {"fortuna_ammo", "fortuna_ammo_rf"}
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
		Time = 0.6,
    },
    ["fire_iron"] = {
        Source = "idle",
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        ShellEjectAt = 40/40,		
    },
}