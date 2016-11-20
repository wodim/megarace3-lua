torche={ module1SFX }

function torche:Init()
	self.module1SFX = GetEntityName() .. "defo"
	loadSFX( "CURRENT", self.module1SFX, "sfx_torche" )
	startSFX( self.module1SFX )
end

function torche:Update()
end

function torche:End()
end
