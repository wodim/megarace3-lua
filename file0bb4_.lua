fxL3P2={ module2SFX }

function fxL3P2:Init()
	self.module2SFX = GetEntityName() .. "defx2"
	loadSFX( "CURRENT", self.module2SFX, "sfx_fxL3P2" )
	startSFX( self.module2SFX )
end

function fxL3P2:Update()
end

function fxL3P2:End()
end