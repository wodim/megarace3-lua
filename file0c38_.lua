particuleB={ module1SFX }

function particuleB:Init()

	EnableCollisionDetection("CURRENT", TRUE)
	SetEntityDamage("CURRENT", PARTB_COL_LIFE)

	self.module1SFX = GetEntityName() .. "particuleB"
	loadSFX( "CURRENT", self.module1SFX, "sfx_L5partB" )
	startSFX( self.module1SFX )
end

function particuleB:Update()
end

function particuleB:End()
end

function particuleB:Notify()
end