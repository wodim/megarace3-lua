fxA7P3={ module1SFX }

function fxA7P3:Init()
	self.module1SFX = GetEntityName() .. "fxA7P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA7P3" )
	startSFX( self.module1SFX )
end

function fxA7P3:Update()
end

function fxA7P3:End()
end