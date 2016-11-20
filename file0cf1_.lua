fxC5P1={ module1SFX }

function fxC5P1:Init()
	self.module1SFX = GetEntityName() .. "fxC5P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC5P1" )
	startSFX( self.module1SFX )
end

function fxC5P1:Update()
end

function fxC5P1:End()
end