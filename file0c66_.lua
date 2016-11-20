fxC2P0={ module1SFX }

function fxC2P0:Init()
	self.module1SFX = GetEntityName() .. "fxC2P0"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC2P0" )
	startSFX( self.module1SFX )
end

function fxC2P0:Update()
end

function fxC2P0:End()
end