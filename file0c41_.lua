fxA5P3={ module1SFX }

function fxA5P3:Init()
	self.module1SFX = GetEntityName() .. "fxA5P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA5P3" )
	startSFX( self.module1SFX )
end

function fxA5P3:Update()
end

function fxA5P3:End()
end