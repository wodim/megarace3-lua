fxA2P2={ module1SFX }

function fxA2P2:Init()
	self.module1SFX = GetEntityName() .. "fxA2P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA2P2" )
	startSFX( self.module1SFX )
end

function fxA2P2:Update()
end

function fxA2P2:End()
end