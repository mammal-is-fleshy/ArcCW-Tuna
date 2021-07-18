SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "RDV-10G"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Semi-Auto shotgun. Made for close range security. Speedloader speeds up the rechambering process by a margin."
SWEP.Trivia_Manufacturer = "FFR Armory"
SWEP.Trivia_Country = "Geneva Federation"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Year = "2180"

SWEP.TrueName = "GioJo Reference"
SWEP.True_Country = "Sicily is just Italy but better"
SWEP.True_Manufacturer = "Kono Yume DREAM"
SWEP.True_Class = "I KISS A GULL AND I LIKE IT"
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
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.IsShotgun = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_dawnshatter.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_dawnshatter.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 8
SWEP.DamageMin = 3 -- damage done at maximum range
SWEP.Range = 30 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 8

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 11
SWEP.MaxRecoilBlowback = 5

SWEP.Recoil = 2.2
SWEP.RecoilSide = 1.5
SWEP.RecoilRise = 1.2
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 10 -- number of shots per trigger pull.

SWEP.Firemodes = {
	{
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 3

SWEP.AccuracyMOA = 55 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 280 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 320

SWEP.Primary.Ammo = "buckshot" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/shotgun/fire.mp3"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/shotgun/sd.mp3"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_shotgun.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.3

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 20

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.681, 5, 0.92),
    Ang = Angle(0.4, 0, 3),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 5, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0.5, 5, -1)
SWEP.HolsterAng = Angle(-5, 15, -16.496)

SWEP.CustomizePos = Vector(5, 3, 0.5)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(15, 10, 40)

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.WorldModelOffset = {
    pos = Vector(-3, 4, -4.5),
    ang = Angle(-10, 0, 180+5)
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
            vpos = Vector(0, -2.45, -1.5), 
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
            vpos = Vector(0, -1.65, 19),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, 0, 8),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },	
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(-0.65, -0.9, 8), 
            vang = Angle(90, 0, 180),
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
SWEP.ShotgunReload = true

SWEP.Hook_SelectInsertAnimation = function(wep, data)  --thankyou 8Z

    local insertAmt = math.min(wep.Primary.ClipSize + wep:GetChamberSize() - wep:Clip1(), wep:GetOwner():GetAmmoCount(wep.Primary.Ammo), 4)
    local anim = "sgreload_insert" .. insertAmt

    return {count = insertAmt, anim = anim, empty = false}
end

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
        ShellEjectAt = 0,		
    },
    ["sgreload_start"] = {
        Source = "start",
        LHIK = true,
        LHIKEaseIn = 0.3,		
        LHIKIn = 0.5,
        LHIKOut = 0,
        LHIKEaseOut = 0,		
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_start_empty"] = {
        Source = "dry",
        LHIK = true,
        LHIKEaseIn = 0.2,		
        LHIKIn = 1.8,
        LHIKOut = 0,
        LHIKEaseOut = 0,			
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        ShellEjectAt = 21/40,		
    },
    ["sgreload_insert"] = {
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        Source = "load1",   
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
    },
    ["sgreload_insert1"] = {
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,	
        Source = "load1",     
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
    },
    ["sgreload_insert2"] = {
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        Source = "load2",     
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
    },
    ["sgreload_insert3"] = {
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        Source = "load3",    
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
    },
    ["sgreload_insert4"] = {
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        Source = "load4",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
    },
    ["sgreload_finish"] = {
        Source = "end",
		LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.5,
    },
}