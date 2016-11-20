fxC4P2={ module1SFX }

function fxC4P2:Init()

	LoadEntityAnim("fxC4P2","fxC4P2")
	StartEntityAnim("fxC4P2","fxC4P2",1,-1,.5)

	self.module1SFX = GetEntityName() .. "fxC4P2"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC4P2" )
	startSFX( self.module1SFX )
end

function fxC4P2:Update()
end

function fxC4P2:End()
end