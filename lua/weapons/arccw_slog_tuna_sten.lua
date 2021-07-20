SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "VT0R-5"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Early design for the next line of PDW, capacity of an LMG, size of a pistol."
SWEP.Trivia_Manufacturer = "XLR Alpha"
SWEP.Trivia_Country = "Borgh"
SWEP.Trivia_Calibre = "8mm XLR"
SWEP.Trivia_Year = "2168"

SWEP.TrueName = "Salad Mander"
SWEP.True_Country = "Oceana"
SWEP.True_Manufacturer = "Corn Wall"
SWEP.True_Class = "Isle of SOCK"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 2

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_sten.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_sten.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 23
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 950 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 100 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 1.5

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.55
SWEP.RecoilRise = 1.2
SWEP.VisualRecoilMult = 0.5

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(300, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 1.75)

    return delay / mult
end

SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 650 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 120

SWEP.Primary.Ammo = "pistol" 

SWEP.ShootVol = 110 -- volume of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/smg/2fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/smg/firesd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_pistol.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.25

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.65

SWEP.BarrelLength = 12

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.339, 5, 1.039),
    Ang = Angle(0, 0, 5),
    Magnification = 1.1,
    SwitchToSound = "", 	
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-4, 5, -6),
        Ang = Angle(0, 10, -45),
    },	
}

SWEP.PhysTracerProfile = 3

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 4, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, 2, -1)
SWEP.HolsterAng = Angle(-5, 30, -20)

SWEP.CustomizePos = Vector(7, 5, -1)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.ShellRotateAngle = Angle(5, 0, 70)

SWEP.ExtraSightDist = 2.5

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },
    ["saw_yes"] = {
		VMBodygroups = {{ind = 2, bg = 1},},
        Override_ActivePos = Vector(-1, 0, -3),
        Override_ActiveAng = Angle(0, 0, -10),			
        Override_HolsterPos = Vector(2, 2, -1),
        Override_HolsterAng = Angle(-5, 30, -20),
        Override_IronSightStruct = {Pos = Vector(-1, 5, -3),Ang = Angle(0, 0, -15),Magnification = 1.1,},	
		CrosshairInSights = true
    },	
    ["slog_tuna_laser_knife"] = {
		Override_BashPreparePos = Vector(-1, -5, -5),
		Override_BashPrepareAng = Angle(0, 0, -5),
		Override_BashPos = Vector(-1, 12, -3),
		Override_BashAng = Angle(4, 6, 0),
    },		
}

SWEP.WorldModelOffset = {
    pos = Vector(-3, 4, -5),
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
            vpos = Vector(0, -2.5, 2), 
            vang = Angle(90, 0, -90),
        },			
        InstalledEles = {"iron_no"},	
        MergeSlots = {6},			
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"fortuna_muzzle"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1.4, 13.5),
            vang = Angle(90, 0, -90),
        },
    },	
    {
        PrintName = "Tactical",
        Slot = {"fortuna_tac", "fortuna_knife_muz"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.5, -1.25, 11), 
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
        Slot = {"fortuna_optic_saw"},
		Hidden = true,
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.5, -1, 9.5),
            vang = Angle(90, 0, -90),
        },		
        InstalledEles = {"saw_yes"},				
    },		
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim) --- hierarchy ---
    if wep.Attachments[6].Installed == "slog_tuna_specialist_saw" then
        return anim .. "_saw"
    end
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
    ["fire_iron"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
		MinProgress = 120/40			
    },
    ["reload_saw"] = {
        Source = "dry_saw",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 1,
        LHIKEaseIn = 0.2,		
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
		MinProgress = 120/40			
    },	
}