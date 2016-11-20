fxC3P3={ module3SFX }

function fxC3P3:Init()
	LoadEntityAnim("fxC3P3","fxC3P3")
	StartEntityAnim("fxC3P3","fxC3P3",1,-1,.1)
	
	self.module3SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module3SFX, "sfx_fxC3P3" )
	startSFX( self.module3SFX )
end

function fxC3P3:Update()
end

function fxC3P3:End()
end