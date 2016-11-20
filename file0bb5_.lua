fxL3P3={ module3SFX }

function fxL3P3:Init()
	LoadEntityAnim("fxL3P3","fxL3P3")
	StartEntityAnim("fxL3P3","fxL3P3",1,-1,1)
	self.module3SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module3SFX, "sfx_fxL3P3" )
	startSFX( self.module3SFX )
end

function fxL3P3:Update()
end

function fxL3P3:End()
end