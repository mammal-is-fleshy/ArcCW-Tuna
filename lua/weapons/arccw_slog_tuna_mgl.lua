SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "EGL-4"
SWEP.Trivia_Class = "Grenade Launcher"
SWEP.Trivia_Desc = "Magnetic grenade launcher fed from a heavy box. A perfect tool for crowd control."
SWEP.Trivia_Manufacturer = "Kreg Tech"
SWEP.Trivia_Country = "Waffensfer"
SWEP.Trivia_Calibre = "44V/mm"
SWEP.Trivia_Year = "2180"

SWEP.TrueName = "Double Barrel Shotgun"
SWEP.True_Country = "Swiss Cheese"
SWEP.True_Manufacturer = "Milkthor"
SWEP.True_Class = "Willis"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 4

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_mgl.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_mgl.mdl"
SWEP.ViewModelFOV = 70

SWEP.Num = 1
SWEP.ShootEntity = "arccw_slog_tuna_mgl_exp"
SWEP.MuzzleVelocity = 15000

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 
SWEP.Primary.ClipSize = 12

SWEP.Recoil = 1.7
SWEP.RecoilSide = 0.8
SWEP.MaxRecoilBlowback = 2

SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 120

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "smg1_grenade"

SWEP.ShootVol = 145 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/lmg/gl_fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/pistol/sd.wav"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/pistol/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 180, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.5
SWEP.SpeedMult = 0.75
SWEP.SightedSpeedMult = 0.55

SWEP.BulletBones = { 
    [5] = "W_Ammo_1",
    [4] = "W_Ammo_2",
    [3] = "W_Ammo_3",
    [2] = "W_Ammo_4",	
    [1] = "W_Ammo_5",
}

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.881, 0, 0.029),
    Ang = Angle(2.433, 0, 5),
    Magnification = 1.05,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 1, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -2, -0.5)
SWEP.HolsterAng = Angle(-7.036, 30.016, -20)

SWEP.CustomizePos = Vector(4, 5, 0)
SWEP.CustomizeAng = Angle(12 , 21.236, 17)

SWEP.BarrelLength = 32

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["saw_yes"] = {
		VMBodygroups = {{ind = 2, bg = 1},},
        VMBodygroups = {{ind = 1, bg = 1}},		
        Override_ActivePos = Vector(-2, 0, -2),
        Override_ActiveAng = Angle(0, 0, -10),			
        Override_HolsterPos = Vector(2, 2, -1),
        Override_HolsterAng = Angle(-5, 30, -20),
        Override_IronSightStruct = {Pos = Vector(-1, 5, -3),Ang = Angle(0, 0, -15),Magnification = 1.1,},	
		CrosshairInSights = true
    },		
}

SWEP.WorldModelOffset = {
    pos = Vector(-5, 6, -5),
    ang = Angle(-10, 0, 180-5)
}

SWEP.MirrorVMWM = true

SWEP.ExtraSightDist = 2

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -4, 0.75),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nors"},
        MergeSlots = {5},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1, 11),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon",
        Offset = {
            vpos = Vector(-0.7, -1, 9),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "You aren't supposed to see this",
        Slot = {"fortuna_optic_saw"},
		Hidden = true,
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0.5, -2, 12),
            vang = Angle(90, 0, -90),
        },		
        InstalledEles = {"saw_yes"},				
    },		
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim) --- hierarchy ---
    if wep.Attachments[5].Installed == "slog_tuna_specialist_saw" then
        return anim .. "_saw"
    end
end

SWEP.Animations = {
    ["idle"] = { Source = "idle", },
    ["ready"] = {
        Source = "draw",
    },	
    ["draw"] = {
        Source = "draw",
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "iron",
    },	
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LastClip1OutTime = 47/40,			
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.4
    },
    ["reload_saw"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LastClip1OutTime = 47/40,			
        LHIK = true,
        LHIKIn = 0.8,
        LHIKEaseIn = 0.5,	
        LHIKOut = 0.7,
        LHIKEaseOut = 0.35,
    },	
}