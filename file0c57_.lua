fxA6f={ module1SFX }

function fxA6f:Init()
	LoadEntityAnim("fxA6f","fxA6f")
	StartEntityAnim("fxA6f","fxA6f",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6f" )
	startSFX( self.module1SFX )
end

function fxA6f:Update()
end

function fxA6f:End()
end