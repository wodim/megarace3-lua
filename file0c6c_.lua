fxC4P3={ module1SFX }

function fxC4P3:Init()
	self.module1SFX = GetEntityName() .. "fxC4P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC4P3" )
	startSFX( self.module1SFX )
end

function fxC4P3:Update()
end

function fxC4P3:End()
end