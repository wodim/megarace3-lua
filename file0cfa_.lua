fxC3P2={ module1SFX }

function fxC3P2:Init()

	self.module1SFX = GetEntityName() .. "fxC3P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC3P2" )
	startSFX( self.module1SFX )
end

function fxC3P2:Update()
end

function fxC3P2:End()
end