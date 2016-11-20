fxP1P2={ module1SFX }

function fxP1P2:Init()
	self.module1SFX = GetEntityName() .. "fxP1P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxP1P2" )
	startSFX( self.module1SFX )
end

function fxP1P2:Update()
end

function fxP1P2:End()
end