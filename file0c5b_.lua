fxA6hbis={ module1SFX }

function fxA6hbis:Init()
	LoadEntityAnim("fxA6hbis","fxA6hbis")
	StartEntityAnim("fxA6hbis","fxA6hbis",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6hbis" )
	startSFX( self.module1SFX )
end

function fxA6hbis:Update()
end

function fxA6hbis:End()
end