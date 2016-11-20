fxC4P1={ module1SFX }

function fxC4P1:Init()
	self.module1SFX = GetEntityName() .. "fxC4P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC4P1" )
	startSFX( self.module1SFX )
end

function fxC4P1:Update()
end

function fxC4P1:End()
end