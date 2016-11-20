fxA3P1={ module1SFX }

function fxA3P1:Init()
	self.module1SFX = GetEntityName() .. "defop1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA3P1" )
	startSFX( self.module1SFX )
end

function fxA3P1:Update()
end

function fxA3P1:End()
end
