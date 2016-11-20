fxC2P2={ module1SFX }

function fxC2P2:Init()
	self.module1SFX = GetEntityName() .. "fxC2P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC2P2" )
	startSFX( self.module1SFX )
end

function fxC2P2:Update()
end

function fxC2P2:End()
end