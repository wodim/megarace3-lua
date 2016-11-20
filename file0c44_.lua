fxA5P1={ module1SFX }

function fxA5P1:Init()
	self.module1SFX = GetEntityName() .. "fxA5P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA5P1" )
	startSFX( self.module1SFX )
end

function fxA5P1:Update()
end

function fxA5P1:End()
end