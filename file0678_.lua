TopSpeedMissile={ missileSFX }

function TopSpeedMissile:Init()
	self.missileSFX = GetEntityName() .. "reactor"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_TopSpeed" )

	SetMissileType( "CURRENT",1,1 )

	HideEntity("CURRENT")
end

function TopSpeedMissile:Update()
	startSFX( self.missileSFX )
	ShowEntity("CURRENT")
end

function TopSpeedMissile:End()
end

function TopSpeedMissile:Fnc1()
	stopSFX( self.missileSFX )
	AddMalus( GetMissileBonusName( "CURRENT" ), HitEntity( "CURRENT" ) )
	AddBonusNeg(BN_TOP_SPEED, HitEntity("CURRENT"))
	HideEntity("CURRENT")
end
