fxC3P0={ module1SFX }

function fxC3P0:Init()
	self.module1SFX = GetEntityName() .. "fxC3P0"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC3P0" )
	startSFX( self.module1SFX )
end

function fxC3P0:Update()
end

function fxC3P0:End()
end