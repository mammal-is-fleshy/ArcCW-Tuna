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
att.Slot = "slog_tuna_specialist_rmb17"

att.Mult_MoveSpeed = 0.85

att.Mult_SightTime = 1.5
att.Mult_Recoil = 0.8
att.Mult_RPM = 0.9

att.Mult_ShootPitch = 0.8

att.Add_BarrelLength = 15

att.UBGL = true
att.ExcludeFlags = {"ubgl"}

att.UBGL_Icon = Material("entities/slog_tuna_specialist_rpg.png", "mips smooth")
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "RPG"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "RPG_Round"
att.UBGL_RPM = 120
att.UBGL_Recoil = 1
att.UBGL_Capacity = 1

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("RPG_Round")
end

att.UBGL_Fire = function(wep, ubgl)
    if (wep:Clip2() <= 0 or wep:Clip1() <= 0) then return end

    wep:PlayAnimation("fire_gl", 1, true, nil, nil, nil, true)

    wep:FireRocket("arccw_slog_tuna_rpg_exp", 3000 * ArcCW.HUToM)

    wep:EmitSound("weapons/arccw_slog/fortuna/ak/fire_rpg.ogg", 100)

    wep:SetClip2(wep:Clip2() - 1)
    wep:SetClip1(wep:Clip1() - 1)	

    wep:DoEffects()
end

att.Hook_OnSelectUBGL = function(wep)
    wep:PlayAnimation("enter_nade", 1, true, nil, nil, nil, true)
	wep:SetNextSecondaryFire(CurTime() + 112/40)
end

att.Hook_OnDeselectUBGL = function(wep)
    wep:PlayAnimation("exit_nade", 1, true, nil, nil, nil, true)
end


att.UBGL_Reload = function(wep, ubgl)
	local clip = 1
	
    if wep:Clip2() >= clip then return end

    if Ammo(wep) <= 0 then return end

    wep:PlayAnimation(wep:Clip2() == 0 and "oicw_dry", 1, true, nil, nil, nil, true)
	wep:SetNextSecondaryFire(CurTime() + 112/40)	

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(5, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "RPG_Round")

    wep:SetClip2(load)
end