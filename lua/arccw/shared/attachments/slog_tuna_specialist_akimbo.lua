att.PrintName = "You aren't suppposed to see this"
att.Icon = nil
att.Description = "text of bottom location"
att.SortOrder = 8
att.AutoStats = true
att.Slot = "slog_tuna_specialist_akimbo"

att.UBGL = true
att.ExcludeFlags = {"ubgl"}

att.UBGL_Icon = Material("entities/slog_tuna_specialist_akimbo.png", "mips smooth")
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "Revolver"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_3"
att.UBGL_ClipSize = 5
att.UBGL_Ammo = "357"
att.UBGL_RPM = 350
att.UBGL_Recoil = 1.8
att.UBGL_RecoilSide = 1.2
att.UBGL_RecoilRise = 0.4
att.UBGL_Capacity = 8

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.Hook_Think = function(wep)
    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
        --wep:Reload()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(false)
    elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" and wep:Clip2() <= 0 then
        return "idle_empty"
    end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("357") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 170 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 1,
		Damage = 80,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 80
			local dmgmin = 30

			local delta = dist / 60

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/arccw_slog/fortuna/rev/fire.ogg", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)
    wep:PlaySoundTable({
            {s = "weapons/arccw_slog/fortuna/pistol/echo.wav",			t = 0},
	})													
    wep:SetClip2(wep:Clip2() - 1)
    
    if wep:Clip2() >= 0 then
        wep:PlayAnimation("fire_2", 1, true, nil, nil, nil, true)
    end

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 8

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if Ammo(wep) <= 0 then return end
	
    if wep:Clip2() >= 0 and wep:Clip1() <= 8 then
        wep:PlayAnimation("wet_lug_rev", 1, true, nil, nil, nil, true)
        wep:SetReloading(CurTime() + 161/40)
        wep:SetNextSecondaryFire(CurTime() + 161/40)
		wep:SetNextPrimaryFire(CurTime() + 161/40)			
	end
	
    if wep:Clip2() >= 0 and wep:Clip1() == 0 then --- dont laugh at this
        wep:PlayAnimation("dry_lug_rev", 1, true, nil, nil, nil, true) --- y dis no work :((((((
        wep:SetReloading(CurTime() + 190/40)
        wep:SetNextSecondaryFire(CurTime() + 190/40)
		wep:SetNextPrimaryFire(CurTime() + 190/40)		
	end
    if wep:Clip2() >= 0 and wep:Clip1() == 9 then
        wep:PlayAnimation("dry_rev", 1, true, nil, nil, nil, true)
        wep:SetReloading(CurTime() + 118/40)
        wep:SetNextSecondaryFire(CurTime() + 118/40)
		wep:SetNextPrimaryFire(CurTime() + 118/40)			
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "357") -- att.UBGL_Ammo

    wep:SetClip2(load)
end