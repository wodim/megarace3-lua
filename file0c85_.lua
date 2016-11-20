fxC6P1={ module1SFX }

function fxC6P1:Init()
	self.module1SFX = GetEntityName() .. "fxC6P1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC6P1" )
	startSFX( self.module1SFX )
end

function fxC6P1:Update()
end

function fxC6P1:End()
end