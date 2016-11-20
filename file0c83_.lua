fxC6P3={ module3SFX }

function fxC6P3:Init()
	LoadEntityAnim("fxC6P3","fxC6P3")
	StartEntityAnim("fxC6P3","fxC6P3",1,-1,.08)
	
	self.module3SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module3SFX, "sfx_fxC6P3" )
	startSFX( self.module3SFX )
end

function fxC6P3:Update()
end

function fxC6P3:End()
end