fxA6gbis={ module1SFX }

function fxA6gbis:Init()
	LoadEntityAnim("fxA6gbis","fxA6gbis")
	StartEntityAnim("fxA6gbis","fxA6gbis",1,-1,1)
	self.module1SFX = GetEntityName() .. "defx"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxA6gbis" )
	startSFX( self.module1SFX )
end

function fxA6gbis:Update()
end

function fxA6gbis:End()
end