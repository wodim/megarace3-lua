fxA6k={ module1SFX }

function fxA6k:Init()
	LoadEntityAnim("fxA6k","fxA6k")
	StartEntityAnim("fxA6k","fxA6k",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6k" )
	startSFX( self.module1SFX )
end

function fxA6k:Update()
end

function fxA6k:End()
end