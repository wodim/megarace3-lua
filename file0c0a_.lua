fxA3mer={ module1SFX }

function fxA3mer:Init()
	self.module1SFX = GetEntityName() .. "defo"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA3mer" )
	startSFX( self.module1SFX )
end

function fxA3mer:Update()
end

function fxA3mer:End()
end
