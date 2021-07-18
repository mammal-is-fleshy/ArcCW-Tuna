SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Proxy Mine"
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
}

SWEP.ChamberSize = 0 
SWEP.Primary.ClipSize = 0

SWEP.Delay = 60 / 600
SWEP.TriggerDelay = true
SWEP.CamAttachment = 1
SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult =	0
SWEP.RecoilPunch = 0
SWEP.RecoilPunchBackMax = 0
SWEP.RecoilVMShake = 0

SWEP.AutoReload = true
SWEP.Disposable = true
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

SWEP.MuzzleVelocity = 20
SWEP.ShootEntity = "arccw_slog_tuna_mine_exp"

SWEP.Primary.Ammo = "slam"

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:Clip1() == 0 then
        if anim == "trigger" then
            return "draws"	
		end	
	end			
end

SWEP.Animations = {
	["idle"] = false,
	["reload"] = {Source = "draw",},
    ["draw"] = {
        Source = "draw",
    },
    ["trigger"] = {
        Source = "prep",
		MinProgress = 40/40
    },
    ["trigger_empty"] = false,
    ["fire"] = {
        Source = "drop",
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE,
    }
}