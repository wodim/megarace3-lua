fxC2P1={ module1SFX }

function fxC2P1:Init()
	self.module1SFX = GetEntityName() .. "fxC2P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC2P1" )
	startSFX( self.module1SFX )
end

function fxC2P1:Update()
end

function fxC2P1:End()
end