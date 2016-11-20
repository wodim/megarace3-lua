fxA2P1={ module1SFX }

function fxA2P1:Init()
	self.module1SFX = GetEntityName() .. "fxA2P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA2P1" )
	startSFX( self.module1SFX )
end

function fxA2P1:Update()
end

function fxA2P1:End()
end