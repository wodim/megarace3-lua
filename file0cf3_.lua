fxC5P3={ module1SFX }

function fxC5P3:Init()
	self.module1SFX = GetEntityName() .. "fxC5P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC5P3" )
	startSFX( self.module1SFX )
end

function fxC5P3:Update()
end

function fxC5P3:End()
end