ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = ""
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.ArcCW_Killable = true

ENT.Model = "models/weapons/arccw/slog_osi_suck/shell_bones.mdl"

AddCSLuaFile()

if SERVER then

    function ENT:Initialize()
		local Forward = self:EyeAngles():Forward()
        local Flet = ents.Create("hunter_flechette")
        local pos = self:GetPos() + self:GetForward() * 32
        local s = IsValid(self.Inflictor) and (self.Inflictor:GetBuff("MuzzleVelocity")) or 1000
        Flet:SetPos( self.Owner:GetShootPos() + Forward * 32 )
        Flet:Spawn()
		Flet:SetVelocity( Forward * 2000 )
        Flet:Activate()
        Flet:SetOwner(self:GetOwner())
        Flet:SetKeyValue("maxspeed", tostring(s))
        Flet:SetKeyValue("minspeed", tostring(s))
        Flet:SetKeyValue("angles", tostring(self:GetAngles()))
        Flet:SetKeyValue("launchconenoise", "0")
        Flet:SetKeyValue("spawnflags", "2")
        Flet:SetSaveValue("m_flRadius", mini and "2" or "12")
        Flet:Fire( "launchBall", "", 0 )
        SafeRemoveEntity(self)
    end
end