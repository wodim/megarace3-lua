fxC3P1={ module1SFX }

function fxC3P1:Init()
	self.module1SFX = GetEntityName() .. "fxC3P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC3P1" )
	startSFX( self.module1SFX )
end

function fxC3P1:Update()
end

function fxC3P1:End()
end