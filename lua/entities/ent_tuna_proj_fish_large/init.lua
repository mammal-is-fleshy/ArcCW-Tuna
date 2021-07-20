
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:SetDamage(dmg, inflictor)
	self.Damage = dmg
	self.Inflictor = inflictor
end

function ENT:RadiusDamage(origin, inflictor, attacker, damage, radius, hitent, dmgtype)
	inflictor = IsValid(inflictor) and inflictor or self
	dmgtype = dmgtype or DMG_BLAST
	local mins = Vector()
	local maxs = Vector()
	local v = Vector()

	if radius < 1 then
		radius = 1
	end
	
	for i = 1, 3 do
		mins[i] = origin[i] - radius
		maxs[i] = origin[i] + radius
	end
	
	local numListedEntities = ents.FindInBox(mins, maxs)
	
	for _, ent in pairs(numListedEntities) do
		local absmin, absmax = ent:WorldSpaceAABB()
	
		for i = 1, 3 do
			if origin[i] < absmin[i] then
				v[i] = absmin[i] - origin[i]
			elseif origin[i] > absmax[i] then
				v[i] = origin[i] - absmax[i]
			else
				v[i] = 0
			end
		end
		
		local dist = v:Length()
		if dist >= radius then
			continue
		end
		
		local points = damage * (1 - dist / radius)
		
		local dir = ent:GetPos() - origin
		local dmginfo = DamageInfo()
		dmginfo:SetAttacker(attacker)
		dmginfo:SetInflictor(inflictor)
		dmginfo:SetReportedPosition(origin)
		dmginfo:SetDamageType(dmgtype)
		// splash damage doesn't apply to person directly hit
		if ent != hitent then
			dir[3] = dir[3] + 64
			dmginfo:SetDamageForce(dir)
			dmginfo:SetDamage(points)
			ent:TakeDamageInfo(dmginfo)
		else
			dir[3] = dir[3] + 24
			dmginfo:SetDamageForce(dir)
			dmginfo:SetDamage(damage)
			ent:TakeDamageInfo(dmginfo)
		end
	end	
end

function ENT:Initialize()
	self.ParticleCreated = false
	self:SetModel("models/arccw_tuna/projectile/spitball_small.mdl")
	self:SetMoveCollide(COLLISION_GROUP_PROJECTILE)
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_CUSTOM)
	self:DrawShadow(false)

	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetMass(1)
		phys:EnableDrag(true)
		phys:EnableGravity(true)
		phys:SetBuoyancyRatio(0)
	end
	
	if self.ParticleCreated == false then
		ParticleEffectAttach( "tuna_spit_trail", PATTACH_POINT_FOLLOW, self,0)
		self.ParticleCreated = true
	end
	
	self.FlySound = CreateSound(self, "NPC_Antlion.PoisonBall")
	self.FlySound:Play()
end

function ENT:OnRemove()
	if self.FlySound then self.FlySound:Stop() end
end

function ENT:PhysicsCollide(data, physobj)

	local start = data.HitPos + data.HitNormal
	local endpos = data.HitPos - data.HitNormal

	local trace = {}
	trace.start = start
	trace.endpos = endpos
	trace.filter = self
	local tr = util.TraceLine(trace)

	if tr.HitWorld then
		if tr.HitSky then self:Remove() return end
		local splash = ents.Create( "info_particle_system" )
		splash:SetKeyValue( "effect_name", "tuna_spit" )
		splash:SetOwner( self.Owner )
		splash:SetPos( tr.HitPos )
		splash:Spawn()
		splash:Activate()
		splash:Fire( "start", "", 0 )
		splash:Fire( "kill", "", 15 )
	end
		
	if data.HitEntity:IsNPC() or data.HitEntity:IsPlayer() then
		local splash_pl = ents.Create( "info_particle_system" )
		splash_pl:SetKeyValue( "effect_name", "tuna_spit_player" )
		splash_pl:SetOwner( self.Owner )
		splash_pl:SetPos( tr.HitPos )
		splash_pl:Spawn()
		splash_pl:Activate()
		splash_pl:Fire( "start", "", 0 )
		splash_pl:Fire( "kill", "", 15 )
	end
	
	self:EmitSound( "GrenadeSpit.Hit" )

	if IsValid(self:GetOwner()) then
		self:RadiusDamage(tr.HitPos, self, self:GetOwner(), 80, 160, data.HitEntity, DMG_ACID)
	end

	timer.Simple(0, function()
		if IsValid(self) then
			self:Remove()
		end
	end)
end

function ENT:Think()
	return false
end