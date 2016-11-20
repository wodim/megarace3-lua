fxC6P4={ module1SFX }

function fxC6P4:Init()
	self.module1SFX = GetEntityName() .. "fxC6P4"
	loadSFX( "CURRENT", self.module1SFX, "sfx_fxC6P4" )
	startSFX( self.module1SFX )
end

function fxC6P4:Update()
end

function fxC6P4:End()
end