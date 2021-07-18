AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= ""
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false

ENT.ArcCW_Killable = false
ENT.CollisionGroup = COLLISION_GROUP_DEBRIS

if SERVER then

    function ENT:Initialize()
        local mine = ents.Create("combine_mine")
        local pos = self:GetPos() + self:GetForward() * 64
        mine:SetPos(pos)
        mine:Spawn()
        mine:Activate()
        mine:SetOwner(self:GetOwner())
        mine:SetKeyValue("StartDisarmed", 0)		
		mine:SetKeyValue("Modification", 1) 		---- wiki said its the ep2 variant but it only explode faster rather than friendly to player???	npc works fine doe dafuq???	
		mine:SetModel("models/npc/slog_osi_suck/mine_npc.mdl")
		----mine:AddRelationship( "player D_LI 99" ) --- its not an npc therefore i cant cheat with relationship
		----mine:AddRelationship( "npc_combine_s D_HT 99" )		 --- WHY IS IT NOT AN NPC        BULLSHIT
        SafeRemoveEntity(self)
    end
	


end



