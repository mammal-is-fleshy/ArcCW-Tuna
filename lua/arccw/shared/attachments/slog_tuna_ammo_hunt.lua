att.PrintName = "Hunter's Kit"
att.Icon = Material("entities/slog_tuna_ammo_hunt.png", "mips smooth")
att.Description = "Hollow flesh piercing tip that do significantly damage towards extremities. Damage is reduce for body and head."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_ammo"}

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if data.tr.HitGroup == HITGROUP_HEAD then
        data.damage = data.damage * 0.5
    elseif data.tr.HitGroup == HITGROUP_CHEST then
        data.damage = data.damage * 0.5	
    elseif data.tr.HitGroup == HITGROUP_STOMACH then
        data.damage = data.damage * 0.5	
    elseif data.tr.HitGroup == HITGROUP_LEFTARM then
        data.damage = data.damage * 2	
    elseif data.tr.HitGroup == HITGROUP_RIGHTARM then
        data.damage = data.damage * 2			
    elseif data.tr.HitGroup == HITGROUP_LEFTLEG then
        data.damage = data.damage * 2	
    elseif data.tr.HitGroup == HITGROUP_RIGHTLEG then
        data.damage = data.damage * 2					
    end
end