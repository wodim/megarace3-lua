fxA7P2={ module1SFX }

function fxA7P2:Init()
	self.module1SFX = GetEntityName() .. "fxA7P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA7P2" )
	startSFX( self.module1SFX )
end

function fxA7P2:Update()
end

function fxA7P2:End()
end