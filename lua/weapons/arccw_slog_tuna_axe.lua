SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Combat Axe"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "\"Ancient\" melee weapon with a hollow core for alternative longer range lunge."
SWEP.Trivia_Manufacturer = "XLR Arms"
SWEP.Trivia_Country = "Unknown"
SWEP.Trivia_Year = "2140"

SWEP.Slot = 0

SWEP.NPCWeaponType = "weapon_crowbar"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_axe.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_axe.mdl"
SWEP.ViewModelFOV = 70

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamage = 80
SWEP.MeleeRange = 25
SWEP.MeleeDamageType = DMG_SLASH

SWEP.MeleeSwingSound = nil
SWEP.MeleeMissSound = nil
SWEP.MeleeHitSound = nil
SWEP.MeleeHitNPCSound = nil

SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE

SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Slash"
    },
}

SWEP.WorldModelOffset = {
    pos = Vector(-5, 8, -6),
    ang = Angle(-10, 0, 180-2.5)
}

SWEP.MirrorVMWM = true

SWEP.MeleeTime = 0.6	
SWEP.MeleeAttackTime = 0.35
SWEP.Delay = 60 / 600 

SWEP.Melee2 = true
SWEP.Melee2Damage = 50
SWEP.Melee2DamageBackstab = 105
SWEP.Melee2Range = 75
SWEP.Melee2Time = 0.7
SWEP.Melee2Gesture = nil
SWEP.Melee2AttackTime = 0.4

SWEP.Backstab = true
SWEP.BackstabMultiplier = 2

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "melee"
SWEP.DrawCrosshair = false

SWEP.Attachments = {
    {
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = {"fml_charm", "charm"},
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0.2, -4, 0),
            vang = Angle(90, 0, -90),
            wpos = Vector(5, 1, -3),
            wang = Angle(-9, 0, 180)
        },
		FreeSlot = true,
    },		
}

SWEP.Primary.ClipSize = -1

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 25/60,
        SoundTable = {{s = "weapons/arccw/knife/knife_deploy.wav", t = 0}}
    },
    ["ready"] = {
        Source = "draw",
        Time = 25/60,
    },
    ["bash"] = {
        Source = {"slash1","slash2","slash3"},
    },
    ["bash2"] = {
        Source = {"stab"},
    },	
}

SWEP.IronSightStruct = false

SWEP.ActivePos = Vector(0, 5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 5, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(10, -10, 0)

SWEP.HolsterPos = Vector(0, 2, 0)
SWEP.HolsterAng = Angle(-40, -10, 0)