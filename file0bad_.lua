volum={ module1SFX }

function volum:Init()
	self.module1SFX = GetEntityName() .. "defvo"
	loadSFX( "CURRENT", self.module1SFX, "sfx_volum" )
	startSFX( self.module1SFX )
end

function volum:Update()
end

function volum:End()
end
