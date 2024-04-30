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
function ENT:PhysicsCollide( colData, collider )
    -- you may get two completely different values, and the second one should be more accurate.
    print(colData.PhysObject:GetEntity())
    print(colData.OurOldVelocity:Length())
    local Entity = colData.PhysObject:GetEntity()
    if not Entity:IsInWorld() then 
    	self:Remove()
    end
end