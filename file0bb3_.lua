fxL3P1={ module1SFX }

function fxL3P1:Init()
	self.module1SFX = GetEntityName() .. "defx1"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxL3P1" )
	startSFX( self.module1SFX )
end

function fxL3P1:Update()
end

function fxL3P1:End()
end