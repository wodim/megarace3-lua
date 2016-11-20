fxA6g={ module1SFX }

function fxA6g:Init()
	LoadEntityAnim("fxA6g","fxA6g")
	StartEntityAnim("fxA6g","fxA6g",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6g" )
	startSFX( self.module1SFX )
end

function fxA6g:Update()
end

function fxA6g:End()
end