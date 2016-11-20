fxC7P1={ module31SFX }

function fxC7P1:Init()
	LoadEntityAnim("fxC7P1","fxC7P1")
	StartEntityAnim("fxC7P1","fxC7P1",1,-1,.1)
	
	self.module31SFX = GetEntityName() .. "fxC7P1"
	loadSFX( "CURRENT", self.module31SFX, "sfx_fxC7P1" )
	startSFX( self.module31SFX )
end

function fxC7P1:Update()
end

function fxC7P1:End()
end