

util.AddNetworkString( "message_box" )







AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("cl_init.lua")

function ENT:Initialize()

	self:SetModel("models/metrostroi_3demc/metrostroi_vending_machine/Testo_Tara.mdl");
	self:PhysicsInit(SOLID_VPHYSICS);

	self:SetMoveType(MOVETYPE_VPHYSICS);
	self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType(SIMPLE_USE);

	local phys = self:GetPhysicsObject()
 
	phys:SetMass(100); --масса обьекта 
	phys:SetVelocity((self:GetUp()*2)); --подьем машины из под земли
	if phys:IsValid() then phys:Wake() 

	end

	if phys:IsValid() then
		phys:Wake()
	end

end
function ENT:Use(activator)
	 
	self.Activator = activator
	activator:ChatPrint(activator:GetName())
end
function ENT:PhysicsCollide( colData, collider )
   
    -- local obj = colData.PhysObject
	-- print(obj)
    local obj_ent = colData["HitEntity"]
	 
	if(obj_ent:IsValid() and self.activator != nil) then 

		obj_ent.MessageData = self.Activator
		activator:ChatPrint("Remove entity")
		self:Remove()
		
	end 

	
	 
     
end