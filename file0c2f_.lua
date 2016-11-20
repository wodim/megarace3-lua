fxL5={ module1SFX }

function fxL5:Init()
	self.module1SFX = GetEntityName() .. "fxL5"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxL5" )
	startSFX( self.module1SFX )
end

function fxL5:Update()
end

function fxL5:End()
end