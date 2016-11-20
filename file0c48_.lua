fxP1P3={ module1SFX }

function fxP1P3:Init()
	self.module1SFX = GetEntityName() .. "fxP1P3"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxP1P3" )
	startSFX( self.module1SFX )
end

function fxP1P3:Update()
end

function fxP1P3:End()
end