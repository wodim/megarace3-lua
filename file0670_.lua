BlindMissile={ missileSFX }

function BlindMissile:Init()
	self.missileSFX = GetEntityName() .. "reactor"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_TopSpeed" )

	SetMissileType( "CURRENT",1,1 )

	HideEntity("CURRENT")
	
	ChargeSon("TirSteal")
end

function BlindMissile:Update()
	startSFX( self.missileSFX )
	ShowEntity("CURRENT")
end

function BlindMissile:End()
end

function BlindMissile:Fnc1()

	local hitEntity = HitEntity("CURRENT")	
	if hitEntity ~= nil then
		JoueSon3D("TirSteal", hitEntity, 0, -1)
	end
	
	stopSFX( self.missileSFX )
	AddMalus( GetMissileBonusName( "CURRENT" ), HitEntity( "CURRENT" ) )
	AddBonusNeg(BN_BLIND, HitEntity("CURRENT"))
	HideEntity("CURRENT")
end
