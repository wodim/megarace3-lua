fxL4={ module1SFX }

function fxL4:Init()
	self.module1SFX = GetEntityName() .. "fxL4"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxL4" )
	startSFX( self.module1SFX )
end

function fxL4:Update()
end

function fxL4:End()
end