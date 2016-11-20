fxC6P2={ module3SFX }

function fxC6P2:Init()

	self.module3SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module3SFX, "sfx_fxC6P2" )
	startSFX( self.module3SFX )
end

function fxC6P2:Update()
end

function fxC6P2:End()
end