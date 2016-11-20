fxC6P0={ module1SFX }

function fxC6P0:Init()
	self.module1SFX = GetEntityName() .. "fxC6P0"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC6P0" )
	startSFX( self.module1SFX )
end

function fxC6P0:Update()
end

function fxC6P0:End()
end