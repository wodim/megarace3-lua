fxC7P2={ module31SFX }

function fxC7P2:Init()
	LoadEntityAnim("fxC7P2","fxC7P2")
	StartEntityAnim("fxC7P2","fxC7P2",1,-1,.1)
	
	self.module31SFX = GetEntityName() .. "fxC7P2"
	loadSFX( "CURRENT", self.module31SFX, "sfx_fxC7P2" )
	startSFX( self.module31SFX )
end

function fxC7P2:Update()
end

function fxC7P2:End()
end