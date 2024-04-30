include("autorun/shared.lua")

surface.CreateFont( "PlayerTagFont", {
	font = "Arial",
	size = 72,
} )

hook.Add( "PostDrawOpaqueRenderables", "player_name_tags", function()
	local pos = self:GetPos() + self:GetUp() * ( self:OBBMaxs().z + 5 )
		pos = pos + Vector( 0, 0, math.cos( CurTime() / 2 ) )
	local angle = ( pos - EyePos() ):GetNormalized():Angle()
	angle = Angle( 0, angle.y, 0 )
	angle.y = angle.y + math.sin( CurTime() ) * 10
	angle:RotateAroundAxis( angle:Up(), -90 )
	angle:RotateAroundAxis( angle:Forward(), 90 )
		cam.Start3D2D( pos, angle, 0.05 )
			draw.SimpleText('Niggers', "PlayerTagFont",0,0, color_white )
		cam.End3D2D()
end)

