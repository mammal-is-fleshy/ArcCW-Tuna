SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - ForTuna" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "RMB-17"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "The apex hunter. Silent as a wisp but can still provides anti armour option."
SWEP.Trivia_Manufacturer = "SRL Corp"
SWEP.Trivia_Country = "Warthed Depths"
SWEP.Trivia_Calibre = "8.8x22mm"
SWEP.Trivia_Year = "2187"

SWEP.TrueName = "Deepwater Flathead"
SWEP.True_Country = "spider land arizona"
SWEP.True_Manufacturer = "wet and dam like your mom"
SWEP.True_Class = "Fish"
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Country = SWEP.True_Country
	SWEP.Trivia_Manufacturer = SWEP.True_Manufacturer
	SWEP.Trivia_Class = SWEP.True_Class	
end

SWEP.Slot = 2

SWEP.CrouchPos = Vector(-0.5, 4, -0.5)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 250

SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/slog_osi_suck/c_notasval.mdl"
SWEP.WorldModel = "models/weapons/arccw/slog_osi_suck/w_ak.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 48
SWEP.DamageMin = 21 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 650 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 2

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.MaxRecoilBlowback = 2.5

SWEP.Recoil = 0.785
SWEP.RecoilSide = 0.325
SWEP.RecoilRise = 0.75
SWEP.VisualRecoilMult = 0.65

SWEP.Delay = 60 / 670 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Hook_ModifyRPM = function(wep, delay)
    if wep.BurstCount == 0 then
        return 60 / 1200
    else
        return
    end	
end

SWEP.Firemodes = {
    {
        Mode = 2,
        Override_ShotRecoilTable = {
            [2] = 0.5
        }			
    },
	    {
        Mode = 1,
    },	
    {
        Mode = 0
    }
}

SWEP.PhysTracerProfile = 3

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 420 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "smg1" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 105 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_slog/fortuna/ak/fire.ogg"
SWEP.ShootSoundSilenced = "weapons/arccw_slog/fortuna/ak/fire.ogg"
SWEP.Suppressor = true

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.ShellModel = "models/weapons/arccw/slog_osi_suck/shell_rifle.mdl"
SWEP.ShellScale = 1.15

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.325

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 22

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.3, 3, 1.3),
    Ang = Angle(0, 0, -5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 5, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0.5, 3.247, 0.239)
SWEP.HolsterAng = Angle(-13.101, 15, -16.496)
SWEP.SprintPos = Vector(0, 5, 1)
SWEP.SprintAng = Angle(0, 0, 0)
SWEP.CustomizePos = Vector(5, 5, -0.5)
SWEP.CustomizeAng = Angle(15, 17, 12)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)
SWEP.ShellRotateAngle = Angle(5, 0, 40)

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {		
    ["iron_no"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },	
}

SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "fortuna_optic",
        Bone = "W_Main", 
        Offset = {
            vpos = Vector(0, -4.4, 1), 
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 1, -6.5),
            wang = Angle(-10.216, 0, 180)			
        },			
        InstalledEles = {"iron_no"},		
    },
    {
        PrintName = "Underbarrel",
        Slot = {"fortuna_fg"},
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, -1, 8.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 1, -4.453),
            wang = Angle(-10.216, 0, 180)			
        },
    },	
    {
        PrintName = "Tactical",
        Slot = "fortuna_tac",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(-0.75, -2.25, 10), 
            vang = Angle(90, 0, 180),
            wpos = Vector(14.329, 0.602, -6),
            wang = Angle(-10.216, 0, 90)			
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
        Slot = {"slog_tuna_specialist_rmb17"},
		Integral = true,
		Hidden = true,
		Installed = "slog_tuna_specialist_rmb17",	
    },		
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep:Clip2() == 1 and wep:GetInUBGL() and wep:GetState() == ArcCW.STATE_SPRINT then --- i am so sorry for this
		if anim == "idle_ubgl" then --- dont judge me, this shit aint working
            return "idle_sprint_gl"			
		end	
	end	
	
    if wep:Clip2() == 0 and wep:GetInUBGL() and wep:GetState() == ArcCW.STATE_SPRINT then --- your fault for looking
		if anim == "idle_ubgl" then --- dont judge me, this shit aint working
            return "idle_sprint"			
		end	
	end		

    if wep:Clip2() == 1 and wep:GetInUBGL() then
		if anim == "enter_sprint" then
            return "enter_sprint_gl"
		elseif anim == "exit_sprint" then
            return "exit_sprint_gl"
		elseif anim == "idle_sprint" then
            return "idle_sprint_gl"				
		end	
	end		
	
    if wep:Clip2() == 0 then
        if anim == "exit_nade" then
            return "exit_nade2"
		elseif anim == "idle_ubgl" then
            return "idle"		
		end	
	end		

    if wep:Clip2() == 1 then
        if anim == "enter_nade" then
            return "enter_nade2"
		end	
	end			
end

SWEP.Animations = {
	["idle"] = {Source = "idle",},
	["idle_sprint"] = {Source = "sprint", Mult = 1.25, LHIK = true, LHIKIn = 0, LHIKOut = 0,},
	["enter_sprint"] = {Source = "sprint_in", Mult = 1.75,        
		LHIK = true,
        LHIKEaseIn = 0.2,		
        LHIKIn = 0.35,
        LHIKOut = 0,},	
	["exit_sprint"] = {Source = "sprint_out", Mult = 2.25,
	    LHIK = true,	
        LHIKIn = 0,
        LHIKOut = 1,
		LHIKEaseOut = 0.2,},		

	["idle_ubgl"] = {Source = "nade_idle",},	
	["idle_sprint_gl"] = {Source = "sprint_gl", Mult = 1.25, LHIK = true, LHIKIn = 0, LHIKOut = 0,},
	["enter_sprint_gl"] = {Source = "sprint_in_gl", Mult = 1.75,        
		LHIK = true,
        LHIKEaseIn = 0.2,		
        LHIKIn = 0.35,
        LHIKOut = 0,},	
	["exit_sprint_gl"] = {Source = "sprint_out_gl", Mult = 2.25,
	    LHIK = true,	
        LHIKIn = 0,
        LHIKOut = 1,
		LHIKEaseOut = 0.2,		MinProgress = 10/40,},	
	
    ["enter_nade"] = {Source = "idle",},		
    ["exit_nade"] = {
		Source = "nade_deload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.3,		
        LHIKIn = 0.8,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.2,
		MinProgress = 20/40,			
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/ak/foley1.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/ak/rpg_out.wav", 		t = 17/40},	
						{s = "weapons/arccw_slog/fortuna/ak/bolt3.wav", 		t = 78/40},							
						{s = "weapons/arccw_slog/fortuna/ak/foley3.wav", 		t = 85/40},						
					},			
    },	

    ["enter_nade2"] = {
		Source = "nade_load",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKEaseIn = 0.2,		
        LHIKIn = 0.35,
        LHIKOut = 0.8,
        LHIKEaseOut = 0.4,
		MinProgress = 95/40,		
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/ak/foley1.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/ak/bolt2.wav", 		t = 20/40},	
						{s = "weapons/arccw_slog/fortuna/ak/rpg_in.wav", 		t = 58/40},					
						{s = "weapons/arccw_slog/fortuna/ak/foley3.wav", 		t = 80/40},						
					},			
    },		
    ["exit_nade2"] = {Source = "idle",},		
	
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
    ["fire_gl"] = {
        Source = "fire",
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
        LHIKIn = 0.35,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.3,
		MinProgress = 65/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/ak/foley1.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/ak/out.wav", 		t = 26/40},
						{s = "weapons/arccw_slog/fortuna/ak/in1.wav", 		t = 53/40},
						{s = "weapons/arccw_slog/fortuna/ak/in2.wav", 		t = 63/40},						
						{s = "weapons/arccw_slog/fortuna/ak/foley2.wav", 		t = 82/40},						
					},	
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.2,
		MinProgress = 95/40,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/ak/foley1.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/ak/out.wav", 		t = 26/40},
						{s = "weapons/arccw_slog/fortuna/ak/in1.wav", 		t = 53/40},
						{s = "weapons/arccw_slog/fortuna/ak/in2.wav", 		t = 63/40},	
						{s = "weapons/arccw_slog/fortuna/ak/bolt1.wav", 		t = 84/40},					
						{s = "weapons/arccw_slog/fortuna/ak/foley2.wav", 		t = 105/40},						
					},	
    },	

    ["oicw_dry"] = {
        Source = "nade_load",	
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.35,
        LHIKOut = 0.65,
        LHIKEaseOut = 0.25,
        SoundTable = {
						{s = "weapons/arccw_slog/fortuna/ak/foley1.wav", 		t = 0/40},
						{s = "weapons/arccw_slog/fortuna/ak/bolt2.wav", 		t = 20/40},	
						{s = "weapons/arccw_slog/fortuna/ak/rpg_in.wav", 		t = 58/40},					
						{s = "weapons/arccw_slog/fortuna/ak/foley3.wav", 		t = 80/40},						
					},			
    },		
}