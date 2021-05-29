att.PrintName = "You aren't suppposed to see this"
att.Icon = nil
att.Description = "text of bottom location"
att.SortOrder = 8
att.Desc_Pros = {
    "Selectable underbarrel grenade launcher",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"Double tap +ZOOM to equip/dequip",
}
att.AutoStats = true
att.Slot = "slog_tuna_specialist_awrx6"

att.Mult_MoveSpeed = 0.85

att.Mult_SightTime = 1.5
att.Mult_Recoil = 0.8
att.Mult_RPM = 0.9

att.Mult_ShootPitch = 0.8

att.Add_BarrelLength = 15

att.UBGL = true
att.ExcludeFlags = {"ubgl"}

att.UBGL_Icon = Material("entities/slog_tuna_specialist_fx92.png", "mips smooth")
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "Master Key"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "buckshot"
att.UBGL_RPM = 120
att.UBGL_Recoil = 1
att.UBGL_Capacity = 4

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("buckshot")
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    wep.Owner:FireBullets({
        Src = wep.Owner:EyePos(),
        Num = 12,
        Damage = 21,
        Force = 1.5,
        Attacker = wep.Owner,
        Dir = wep.Owner:EyeAngles():Forward(),
        Spread = Vector(0.075, 0.075, 0.075),
        Callback = function(_, tr, dmg)
            local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

            local dmgmax = 21
            local dmgmin = 2

            local delta = dist / 42

            delta = math.Clamp(delta, 0, 1)

            local amt = Lerp(delta, dmgmax, dmgmin)

            dmg:SetDamage(amt)
        end
    })

    wep:SetClip2(wep:Clip2() - 1)
	
	wep:EmitSound("weapons/arccw_slog/fortuna/lmg/gl_fire.wav", 100)	
    if wep:Clip2() > 0 then			    	
		wep:SetNextPrimaryFire(CurTime() + 50/40)	
        wep:PlayAnimation("shot_fire")
    else
        wep:PlayAnimation("fire_last")
    end

    wep:DoEffects()

end

att.UBGL_Reload = function(wep, ubgl)
	local clip = 4 + 1
	
    if wep:Clip2() >= clip then return end

    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + (wep:Clip2() == 0 and 120/40 or 105/40)) -- intentional delay

    wep:PlayAnimation(wep:Clip2() == 0 and "oicw_dry" or "oicw_wet", nil, true)

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(5, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "buckshot")

    wep:SetClip2(load)
end