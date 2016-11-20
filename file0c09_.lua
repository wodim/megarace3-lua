fxA3P3={ module1SFX }

function fxA3P3:Init()
	self.module1SFX = GetEntityName() .. "defoP2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA3P3" )
	startSFX( self.module1SFX )
end

function fxA3P3:Update()
end

function fxA3P3:End()
end
