InverseCommandMissile={ missileSFX }

function InverseCommandMissile:Init()
	self.missileSFX = GetEntityName() .. "reactor"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_inverse" )

	SetMissileType( "CURRENT",1,1 )

	HideEntity("CURRENT")
	
	ChargeSon("TirSteal")
end

function InverseCommandMissile:Update()
	startSFX( self.missileSFX )
	ShowEntity("CURRENT")
end

function InverseCommandMissile:End()
end

function InverseCommandMissile:Fnc1()

	local hitEntity = HitEntity("CURRENT")	
	if hitEntity ~= nil then
		JoueSon3D("TirSteal", hitEntity, 0, -1)
	end
	
	stopSFX( self.missileSFX )
	AddMalus( GetMissileBonusName( "CURRENT" ), HitEntity( "CURRENT" ) )
	AddBonusNeg(BN_INVERSE_COMMAND, HitEntity("CURRENT"))
	HideEntity("CURRENT")
end
