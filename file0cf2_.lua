fxC5P2={ module1SFX }

function fxC5P2:Init()
	self.module1SFX = GetEntityName() .. "fxC5P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC5P2" )
	startSFX( self.module1SFX )
end

function fxC5P2:Update()
end

function fxC5P2:End()
end