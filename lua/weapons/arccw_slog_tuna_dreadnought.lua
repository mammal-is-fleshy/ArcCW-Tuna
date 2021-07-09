SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Leviathan"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Alien technology from a different realm. Spits bones like a angry hippo."
SWEP.Trivia_Manufacturer = "SRL Corp"
SWEP.Trivia_Country = "THE SEA"
SWEP.Trivia_Calibre = "Bones"
SWEP.Trivia_Year = "2120"

SWEP.TrueName = "Ded Not"
SWEP.True_Country = "Factual Scumbags"
SWEP.True_Manufacturer = "Red Chamber Group"
SWEP.True_Class = "actual gun"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 3

SWEP.CrouchPos = Vector(-1, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 170

SWEP.CamAttachment = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_fish.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_fish.mdl"
SWEP.ViewModelFOV = 70


SWEP.Damage = 30
SWEP.DamageMin = 4 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 17
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT

SWEP.ShootEntity = "arccw_slog_tuna_dn_proj"
SWEP.MuzzleVelocity = 20000
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 1.5
SWEP.RecoilSide = 1.25
SWEP.RecoilRise = 1.5
SWEP.VisualRecoilMult = 0.8

SWEP.Delay = 60 / 150 -- 60 / RPM.
SWEP.Num = 8

SWEP.Firemodes = {
	{
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 6

SWEP.AccuracyMOA = 80 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 120

SWEP.Primary.Ammo = "357" 

SWEP.ShootVol = 110 -- volume of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/leviathan/fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/rev/fire_sd.ogg"
SWEP.DistantShootSound = "weapons/arccw_slog/fortuna/rifle/echo.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1

SWEP.SightTime = 0.225

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 27

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.401, 5, 0.56),
    Ang = Angle(0, 0, 10),
    Magnification = 1.1,
    CrosshairInSights = true,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 1, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-2.8, 3.247, 0.239)
SWEP.HolsterAng = Angle(-13.101, 7.586, -16.496)

SWEP.CustomizePos = Vector(5, 5, 0)
SWEP.CustomizeAng = Angle(10 , 21.236, 17)

SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.AttachmentElements = {		
}

SWEP.WorldModelOffset = {
    pos = Vector(-1, 5, -5),
    ang = Angle(-10, 0, 180-5)
}

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true

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
    },
    ["fire_iron"] = {
        Source = "fire",
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,		
		MinProgress = 90/40,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/leviathan/reload.ogg", 		t = 0/40},				
					},			
    },
}