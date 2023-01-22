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
att.Slot = "slog_tuna_specialist_aicw"

att.UBGL = true
att.ExcludeFlags = {"ubgl"}

att.UBGL_Icon = Material("entities/slog_tuna_specialist_aicw.png", "mips smooth")
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "Dark Matter"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "AR2AltFire"
att.UBGL_RPM = 120
att.UBGL_Recoil = 0.5
att.UBGL_Capacity = 1

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("AR2AltFire")
end

att.Hook_ShouldNotSight = function(wep)
    if wep:GetInUBGL() then
	return true
	end
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    wep:FireRocket("arccw_slog_tuna_aicw_balls", 4000 * ArcCW.HUToM)

    wep:SetClip2(wep:Clip2() - 1)

	wep:EmitSound("weapons/arccw_slog/fortuna/rifle/6nade.ogg", 100)			    		
    wep:PlayAnimation("fire_ubgl", 1, true, nil, nil, nil, true)

    wep:DoEffects()

end

att.Hook_OnSelectUBGL = function(wep)
    wep:SetReloading(CurTime() + 15/40)
	wep:SetNextPrimaryFire(CurTime() + 15/40)	
	wep:SetNextSecondaryFire(CurTime() + 15/40)		
    wep:PlayAnimation("enter_ubgl", 1, true, nil, nil, nil, true)	
end

att.Hook_OnDeselectUBGL = function(wep)
    wep:SetReloading(CurTime() + 15/40)
	wep:SetNextPrimaryFire(CurTime() + 15/40)
    wep:PlayAnimation("exit_ubgl", 1, true, nil, nil, nil, true)		
end



att.UBGL_Reload = function(wep, ubgl)
	local clip = 1
	
    if wep:Clip2() >= clip then return end

    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + (wep:Clip2() == 0 and 80/40)) 

    wep:PlayAnimation(wep:Clip2() == 0 and "oicw_dry", nil, true)

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "AR2AltFire")

    wep:SetClip2(load)
end