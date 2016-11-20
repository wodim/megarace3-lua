fxA6c={ module1SFX }

function fxA6c:Init()
	LoadEntityAnim("fxA6c","fxA6c")
	StartEntityAnim("fxA6c","fxA6c",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6c" )
	startSFX( self.module1SFX )
end

function fxA6c:Update()
end

function fxA6c:End()
end