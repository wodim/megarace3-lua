fxC7P3={ module31SFX }

function fxC7P3:Init()
	LoadEntityAnim("fxC7P3","fxC7P3")
	StartEntityAnim("fxC7P3","fxC7P3",1,-1,.1)
	
	self.module31SFX = GetEntityName() .. "fxC7P3"
	loadSFX( "CURRENT", self.module31SFX, "sfx_fxC7P3" )
	startSFX( self.module31SFX )
end

function fxC7P3:Update()
end

function fxC7P3:End()
end