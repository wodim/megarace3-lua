fxA5P4={ module1SFX }

function fxA5P4:Init()
	self.module1SFX = GetEntityName() .. "fxA5P4"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA5P4" )
	startSFX( self.module1SFX )
end

function fxA5P4:Update()
end

function fxA5P4:End()
end