fxA7P1={ module1SFX }

function fxA7P1:Init()
	self.module1SFX = GetEntityName() .. "fxA7P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA7P1" )
	startSFX( self.module1SFX )
end

function fxA7P1:Update()
end

function fxA7P1:End()
end