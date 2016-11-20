NoTurnMissile={ missileSFX }

function NoTurnMissile:Init()
	self.missileSFX = GetEntityName() .. "noturn"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_noturn" )

	HideEntity("CURRENT")

	ChargeSon("TirNoTUR")
	ChargeSon("TirSteal")
end

function NoTurnMissile:Update()
	JoueSon3D ("TirNoTUR", "CURRENT", FALSE, -1)
	startSFX( self.missileSFX )
	ShowEntity("CURRENT")
	PrintDebug(GetEntityName() .. " Start")
end

function NoTurnMissile:End()
end

function NoTurnMissile:Fnc1()

	local hitEntity = HitEntity("CURRENT")	
	if hitEntity ~= nil then
		JoueSon3D("TirSteal", hitEntity, 0, -1)
	end
	
	stopSFX( self.missileSFX )
	AddMalus( GetMissileBonusName( "CURRENT" ), HitEntity( "CURRENT" ) )
	AddBonusNeg(BN_NO_TURN, HitEntity("CURRENT"))
	HideEntity("CURRENT")
	PrintDebug(GetEntityName() )
	PrintDebug( " End")
end
