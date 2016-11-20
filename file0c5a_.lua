fxA6h={ module1SFX }

function fxA6h:Init()
	LoadEntityAnim("fxA6h","fxA6h")
	StartEntityAnim("fxA6h","fxA6h",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6h" )
	startSFX( self.module1SFX )
end

function fxA6h:Update()
end

function fxA6h:End()
end