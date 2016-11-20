fxA6b={ module1SFX }

function fxA6b:Init()
	LoadEntityAnim("fxA6b","fxA6b")
	StartEntityAnim("fxA6b","fxA6b",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6b" )
	startSFX( self.module1SFX )
end

function fxA6b:Update()
end

function fxA6b:End()
end