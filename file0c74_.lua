fxC7P0={ module31SFX }

function fxC7P0:Init()
	LoadEntityAnim("fxC7P0","fxC7P0")
	StartEntityAnim("fxC7P0","fxC7P0",1,-1,.1)
	
	self.module31SFX = GetEntityName() .. "fxC7P0"
	loadSFX( "CURRENT", self.module31SFX, "sfx_fxC7P0" )
	startSFX( self.module31SFX )
end

function fxC7P0:Update()
end

function fxC7P0:End()
end