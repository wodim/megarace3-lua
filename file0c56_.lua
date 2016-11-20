fxA6e={ module1SFX }

function fxA6e:Init()
	LoadEntityAnim("fxA6e","fxA6e")
	StartEntityAnim("fxA6e","fxA6e",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6e" )
	startSFX( self.module1SFX )
end

function fxA6e:Update()
end

function fxA6e:End()
end