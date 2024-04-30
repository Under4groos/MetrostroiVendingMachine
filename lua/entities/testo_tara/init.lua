






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
   
   
    local obj_ent = colData["HitEntity"]
	
	if(obj_ent:IsValid()) then 

	 
		obj_ent.MessageData["QDATA"] = {  math.random( 1 , 400 ) ,  math.random( 1 , 400 ) ,  math.random( 1 , 400 )}
		obj_ent.MessageData["BOXUSER"] = self.Activator
		self:Remove()
	end 
	
	
	 
     
end