fxC1P3={ module1SFX }

function fxC1P3:Init()
	self.module1SFX = GetEntityName() .. "fxC1P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC1P3" )
	startSFX( self.module1SFX )
end

function fxC1P3:Update()
end

function fxC1P3:End()
end