
include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/metrostroi_3demc/metrostroi_vending_machine/Souce_Box.mdl");
	self:PhysicsInit(SOLID_VPHYSICS);

	self:SetMoveType(MOVETYPE_VPHYSICS);
	self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType(SIMPLE_USE);

	local phys = self:GetPhysicsObject()
 
	phys:SetMass(100); --масса обьекта 
	phys:SetVelocity((self:GetUp()*2)); --подьем машины из под земли
	if phys:IsValid() then phys:Wake()  --

end


	if phys:IsValid() then
	
		phys:Wake()

	end

end	

