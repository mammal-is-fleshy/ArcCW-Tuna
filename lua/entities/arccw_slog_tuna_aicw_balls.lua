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
        local balls = ents.Create("point_combine_ball_launcher")
        local pos = self:GetPos() + self:GetForward() * 128
        local s = IsValid(self.Inflictor) and (self.Inflictor:GetBuff("MuzzleVelocity")) or 15000
        balls:SetPos(pos)
        balls:Spawn()
        balls:Activate()
        balls:SetOwner(self:GetOwner())
        balls:SetKeyValue("ballcount", "1")
        balls:SetKeyValue("ballrespawntime", "-1")
        balls:SetKeyValue("maxballbounces", "2" or "4")
        balls:SetKeyValue("maxspeed", tostring(s))
        balls:SetKeyValue("minspeed", tostring(s))
        balls:SetKeyValue("angles", tostring(self:GetAngles()))
        balls:SetKeyValue("launchconenoise", "0")
        balls:SetKeyValue("spawnflags", "2")
        balls:SetSaveValue("m_flRadius", "2" or "12")
        balls:Fire( "launchBall", "", 0 )
        SafeRemoveEntity(self)
    end
end