fxA6a={ module1SFX }

function fxA6a:Init()
	LoadEntityAnim("fxA6a","fxA6a")
	StartEntityAnim("fxA6a","fxA6a",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6a" )
	startSFX( self.module1SFX )
end

function fxA6a:Update()
end

function fxA6a:End()
end