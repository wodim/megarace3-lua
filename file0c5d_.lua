fxA6ibis={ module1SFX }

function fxA6ibis:Init()
	LoadEntityAnim("fxA6ibis","fxA6ibis")
	StartEntityAnim("fxA6ibis","fxA6ibis",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6ibis" )
	startSFX( self.module1SFX )
end

function fxA6ibis:Update()
end

function fxA6ibis:End()
end