SWEP.Base = "arccw_base"
SWEP.Spawnable = false -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Field Mine"
SWEP.Trivia_Class = "Throwable"
SWEP.Trivia_Desc = "Proxy mine that leaps towards hostile."
SWEP.Trivia_Manufacturer = "NFA Equipments"
SWEP.Trivia_Country = "Nova Union"
SWEP.Trivia_Year = "2150"

SWEP.TrueName = "B R A N D Y"
SWEP.True_Country = "Briish Wooah"
SWEP.True_Manufacturer = "north"
SWEP.True_Class = "BreeeeeTeeeeesh WuTah"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Firemodes = {
	{
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult =	0
SWEP.RecoilPunch = 0
SWEP.RecoilPunchBackMax = 0
SWEP.RecoilVMShake = 0

SWEP.Slot = 4

SWEP.NotForNPCs = true
SWEP.Num = 1
SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_mine.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/c_mine.mdl"
SWEP.ViewModelFOV = 70

SWEP.WorldModelOffset = {
    pos = Vector(3, 2, -1),
    ang = Angle(-10, 0, 180)
}

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 5
SWEP.ShootEntity = "fortuna_ent_hax"

SWEP.Primary.Ammo = "slam"

SWEP.Animations = {
	["idle"] = false,
    ["draw"] = {
        Source = "draw",
    },
    ["pre_throw"] = {
        Source = "prep",
    },
    ["throw"] = {
        Source = "drop",
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE,
    }
}