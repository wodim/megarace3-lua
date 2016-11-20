fxC5P0={ module1SFX }

function fxC5P0:Init()
	self.module1SFX = GetEntityName() .. "fxC5P0"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC5P0" )
	startSFX( self.module1SFX )
end

function fxC5P0:Update()
end

function fxC5P0:End()
end