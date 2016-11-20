fxA3P2={ module1SFX }

function fxA3P2:Init()
	self.module1SFX = GetEntityName() .. "defoP2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA3P2" )
	startSFX( self.module1SFX )
end

function fxA3P2:Update()
end

function fxA3P2:End()
end
