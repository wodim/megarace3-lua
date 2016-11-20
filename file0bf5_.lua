fxL6P1={ module1SFX }

function fxL6P1:Init()
	self.module1SFX = GetEntityName() .. "fxL6P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxL6P1" )
	startSFX( self.module1SFX )
end

function fxL6P1:Update()
end

function fxL6P1:End()
end
