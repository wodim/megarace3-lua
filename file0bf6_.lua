fxL6P2={ module1SFX }

function fxL6P2:Init()
	self.module1SFX = GetEntityName() .. "fxL6P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxL6P2" )
	startSFX( self.module1SFX )
end

function fxL6P2:Update()
end

function fxL6P2:End()
end
