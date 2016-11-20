fxA6i={ module1SFX }

function fxA6i:Init()
	LoadEntityAnim("fxA6i","fxA6i")
	StartEntityAnim("fxA6i","fxA6i",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6i" )
	startSFX( self.module1SFX )
end

function fxA6i:Update()
end

function fxA6i:End()
end