fxC1P2={ module1SFX }

function fxC1P2:Init()

	self.module1SFX = GetEntityName() .. "fxC1P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC1P2" )
	startSFX( self.module1SFX )
end

function fxC1P2:Update()
end

function fxC1P2:End()
end