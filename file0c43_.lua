fxA5P2={ module1SFX }

function fxA5P2:Init()
	self.module1SFX = GetEntityName() .. "fxA5P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA5P2" )
	startSFX( self.module1SFX )
end

function fxA5P2:Update()
end

function fxA5P2:End()
end