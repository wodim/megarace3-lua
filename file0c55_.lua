fxA6d={ module1SFX }

function fxA6d:Init()
	LoadEntityAnim("fxA6d","fxA6d")
	StartEntityAnim("fxA6d","fxA6d",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6d" )
	startSFX( self.module1SFX )
end

function fxA6d:Update()
end

function fxA6d:End()
end