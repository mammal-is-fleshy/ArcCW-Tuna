SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Dawn Breaker-14D"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Lever action shotgun. An odd choice for a calibre this size. Made for close range hunting."
SWEP.Trivia_Manufacturer = "DRS Arms"
SWEP.Trivia_Country = "Vrenzie"
SWEP.Trivia_Calibre = "10 Gauge"
SWEP.Trivia_Year = "2165"

SWEP.TrueName = "Terminator 2 on DVD"
SWEP.True_Country = "Cheeseburger Land"
SWEP.True_Manufacturer = "Factual Corp"
SWEP.True_Class = "1984"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end
SWEP.Slot = 3

SWEP.CrouchPos = Vector(-1, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.IsShotgun = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_dawnbreaker.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_dawnbreaker.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 15
SWEP.DamageMin = 5 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1500 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 5

SWEP.Recoil = 3
SWEP.RecoilSide = 2
SWEP.RecoilRise = 1.75
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 120 -- 60 / RPM.
SWEP.Num = 15 -- number of shots per trigger pull.

SWEP.Firemodes = {
	{
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 3

SWEP.AccuracyMOA = 50 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 320 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 300

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
    Pos = Vector(-2.609, 5, 1.036),
    Ang = Angle(0, 0, 5),
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

SWEP.CustomizePos = Vector(5, 3, 0.5)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(15, -50, 40)

SWEP.ExtraSightDist = 2.5

SWEP.ManualAction = true
SWEP.NoLastCycle = true

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
            vpos = Vector(0, -2.9, 3.5), 
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
            vpos = Vector(0, -1.65, 17),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, 1, 8),
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

SWEP.Hook_TranslateAnimation = function(wep, anim)		
    if wep.Attachments[3].Installed then
        if anim == "cycle" then
            return "cycle_att"
		end
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
		MinProgress = 0.16,
    },
    ["cycle"] = {
        Source = {"pump1","pump3","pump2"},
        ShellEjectAt = 0.3,
    },
    ["cycle_att"] = {
        Source = {"pump1","pump3"},
        ShellEjectAt = 0.3,
    },	
    ["cycle_iron"] = {
        Source = {"pump3"},
        ShellEjectAt = 0.3,
    },	
    ["fire_iron"] = {
        Source = "fire",
		MinProgress = 0.16,		
    },
    ["sgreload_start"] = {
        Source = "start",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_start_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        ShellEjectAt = 0.3,		
    },
    ["sgreload_insert"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
    },
    ["sgreload_finish"] = {
        Source = "end",
    },
}