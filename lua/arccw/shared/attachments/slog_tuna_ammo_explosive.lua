att.PrintName = "Explosive Tip"
att.Icon = Material("entities/slog_tuna_ammo_frag.png", "mips smooth")
att.Description = "Explosive rounds."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fortuna_ammo"}

att.Mult_RPM = 0.5
att.Mult_AccuracyMOA = 5
att.Mult_Damage = 1.5
att.Mult_DamageMin = 0.85
att.Mult_Range = 0.5
att.Mult_Penetration = 0
att.Mult_MuzzleVelocity = 0.5

att.Override_DamageType = DMG_BLAST + DMG_AIRBOAT

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(5, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1, 0.75)

    return delay / mult
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    local effectdata = EffectData()
	
    effectdata:SetOrigin( data.tr.HitPos )
    util.Effect( "Explosion", effectdata)
	
    local rad = math.Clamp(math.ceil(wep:GetDamage(0)), (wep.Damage + wep.DamageMin)*5/2, (wep.Damage + wep.DamageMin)*8/2)
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, rad, wep:GetDamage(data.range))
	
    if ent:IsValid() and ent:GetClass() == {"npc_helicopter"} then
        data.dmgtype = DMG_AIRBOAT
    end
end