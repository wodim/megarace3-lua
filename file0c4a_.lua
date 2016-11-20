fxP1P4={ module1SFX }

function fxP1P4:Init()
	self.module1SFX = GetEntityName() .. "fxP1P4"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxP1P4" )
	startSFX( self.module1SFX )
end

function fxP1P4:Update()
end

function fxP1P4:End()
end