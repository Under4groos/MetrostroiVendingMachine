AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("cl_init.lua")


util.AddNetworkString( "message_box" )



function ENT:Initialize()

	self:SetModel("models/metrostroi_3demc/metrostroi_vending_machine/Blindozer.mdl");
	self:PhysicsInit(SOLID_VPHYSICS);
	self:SetMoveType(MOVETYPE_VPHYSICS);
	self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType(SIMPLE_USE);



	self.ID_ENTITY = "Blindozer"
	self.MessageData = {}

	local phys = self:GetPhysicsObject()
 
	phys:SetMass(100); --масса обьекта 
	phys:SetVelocity((self:GetUp()*2)); --подьем машины из под земли
	if phys:IsValid() then phys:Wake()  --
end

	if phys:IsValid() then
	
		phys:Wake()

	end

end	

function ENT:Use(activator)
	if(self.MessageData["USER"] != nil) then 

		self.MessageData["LASTUSER"] = self.MessageData["USER"]
	end 
		
	self.MessageData["USER"] = activator

	net.Start( "message_box" )
		net.WriteEntity(self)
		net.WriteTable(self.MessageData)
	net.Send(activator)
	activator:ChatPrint(table.ToString(self.MessageData))
end

function ENT:PhysicsCollide( colData, collider )
  
	if(self.MessageData["USER"] != nil) then 

		self.MessageData["USER"]:ChatPrint(tostring(collision_ent))
		
		
	end 
end
