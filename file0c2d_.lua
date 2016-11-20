fxA2P3={ module1SFX }

function fxA2P3:Init()
	self.module1SFX = GetEntityName() .. "fxA2P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA2P3" )
	startSFX( self.module1SFX )
end

function fxA2P3:Update()
end

function fxA2P3:End()
end