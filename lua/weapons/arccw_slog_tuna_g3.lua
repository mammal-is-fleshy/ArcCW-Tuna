SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "H4WK-18"
SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = "Grade 7 Relic. Allegedly only 12 exist left. Practically priceless.\n \n Please handle with extreme care."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Country = "Unknown"
SWEP.Trivia_Calibre = "7.62×51mm"
SWEP.Trivia_Year = "2045"

SWEP.TrueName = "Pike Fish"
SWEP.True_Country = "British Virgin Islands"
SWEP.True_Manufacturer = "B RAN DY"
SWEP.True_Class = "LOOO NG"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-0.5, 2.5, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_g3.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_g3.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 62
SWEP.DamageMin = 17 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 600 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2

SWEP.Recoil = 0.975
SWEP.RecoilSide = 0.625
SWEP.RecoilRise = 0.2
SWEP.VisualRecoilMult = 0.25

SWEP.Delay = 60 / 560 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(7, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 1.1)

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

SWEP.AccuracyMOA = 0.75 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 275 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "ar2" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/rifle/5fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rifle/5firesd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.4

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.625

SWEP.BarrelLength = 27

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.951, 2, 0.4),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "",
}

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, 5, -1)
SWEP.HolsterAng = Angle(-5, 30, -20)

SWEP.CustomizePos = Vector(6, 2, -0.5)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 2

SWEP.AttachmentElements = {		
    ["iron_no"] = {VMBodygroups = {{ind = 1, bg = 1},},},
    ["rail1"] = {VMBodygroups = {{ind = 2, bg = 1},},},
    ["rail2"] = {VMBodygroups = {{ind = 3, bg = 1},},},	
}

SWEP.WorldModelOffset = {
    pos = Vector(-9, 6, -4),
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
            vpos = Vector(0, -3.7, 0), 
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
            vpos = Vector(0, -1.5, 24),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, 0.4, 9),
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
            vpos = Vector(1.05, -1.25, 15), 
            vang = Angle(90, 0, 0),
        },
        ExtraSightDist = 10,
        CorrectivePos = Vector(0.75, 3, 0),	
        InstalledEles = {"rail2"},			
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
		MinProgress = 60/40		
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.4,
		MinProgress = 100/40		
    },	
}