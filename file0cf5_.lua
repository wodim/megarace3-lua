fxC1P1={ module1SFX }

function fxC1P1:Init()
	self.module1SFX = GetEntityName() .. "fxC1P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC1P1" )
	startSFX( self.module1SFX )
end

function fxC1P1:Update()
end

function fxC1P1:End()
end