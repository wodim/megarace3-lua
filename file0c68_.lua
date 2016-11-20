fxC2P4={ module1SFX }

function fxC2P4:Init()
	self.module1SFX = GetEntityName() .. "fxC2P4"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC2P4" )
	startSFX( self.module1SFX )
end

function fxC2P4:Update()
end

function fxC2P4:End()
end