cercleantigravite={module1SFX}

function cercleantigravite:Init()
	self.module1SFX = GetEntityName() .. "cercleantigravite"
	loadSFX( "CURRENT", self.module1SFX, "sfx_gravity1" )
	startSFX( self.module1SFX )
	
	EnableCollisionDetection("o3d_ca05", TRUE)
	EnableCollisionDetection("o3d_ca07", TRUE)
end

function cercleantigravite:Update()
end

function cercleantigravite:End()
end
