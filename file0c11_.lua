fxstart={ module1SFX }

function fxstart:Init()
	self.module1SFX = GetEntityName() .. "fxstart"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxstart" )
	startSFX( self.module1SFX )
end

function fxstart:Update()
end

function fxstart:End()
end