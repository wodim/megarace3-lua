fxC2P3={ module1SFX }

function fxC2P3:Init()
	self.module1SFX = GetEntityName() .. "fxC2P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC2P3" )
	startSFX( self.module1SFX )
end

function fxC2P3:Update()
end

function fxC2P3:End()
end