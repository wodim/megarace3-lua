fxP1P1={ module1SFX }

function fxP1P1:Init()
	self.module1SFX = GetEntityName() .. "fxP1P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxP1P1" )
	startSFX( self.module1SFX )
end

function fxP1P1:Update()
end

function fxP1P1:End()
end