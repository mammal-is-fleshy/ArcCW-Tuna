AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= ""
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false

ENT.ArcCW_Killable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

if SERVER then

    function ENT:Initialize()

        local mine = ents.Create( "combine_mine" )
        local pos = self:GetPos() + self:GetForward() * 32
        mine:SetPos(pos)
        mine:Spawn()
        mine:Activate()
        mine:SetOwner(self:GetOwner())
		mine:SetKeyValue( "Modification", "1" )
		mine:SetKeyValue( "StartDisarmed", "0" )
        mine:SetModel("models/npc/slog_osi_suck/mine_npc.mdl")
        SafeRemoveEntity(self)
    end
	
end