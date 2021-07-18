ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = ""
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.ArcCW_Killable = true

----ENT.Model = "models/weapons/arccw/slog_osi_suck/shell_bones.mdl"

AddCSLuaFile()

if SERVER then

    function ENT:Initialize()
		local Forward = self:EyeAngles():Forward()
        local Flet = ents.Create("hunter_flechette")
        Flet:SetPos( self.Owner:GetShootPos() + Forward * 32 )
        Flet:Spawn()
		Flet:SetVelocity( Forward * 2000 )
        Flet:Activate()
        Flet:SetOwner(self:GetOwner())
        Flet:SetKeyValue("angles", tostring(self:GetAngles()))
        Flet:SetSaveValue("m_flRadius", mini and "2" or "12")
		Flet:SetModel("models/weapons/arccw/slog_osi_suck/shell_bones.mdl")
        SafeRemoveEntity(self)
    end
end