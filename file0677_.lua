StealMissile={ missileSFX }

function StealMissile:Init()
	self.missileSFX = GetEntityName() .. "steal"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_steal" )

	HideEntity("CURRENT")

	ChargeSon("TirSteal")
	ChargeSon("BonusSTL")
--	ChargeSon("")
end

function StealMissile:Update()
	startSFX( self.missileSFX )
	ShowEntity("CURRENT")
	JoueSon3D ("TirSteal", "CURRENT", FALSE, -1)
	PrintDebug(GetEntityName() .. " Start")
end

function StealMissile:End()
end


function StealMissile:Fnc1()
	stopSFX( self.missileSFX )
	if StealBonus( GetNameParentMissile( "CURRENT" ), HitEntity( "CURRENT" ) )==TRUE then
		AddBonusNeg(BN_STEAL, HitEntity("CURRENT"))
		JoueSon3D("BonusSTL", HitEntity( "CURRENT" ) , FALSE, -1)
--		JoueSon3D("", GetNameParentMissile( "CURRENT" ) , FALSE, -1)
	end
	HideEntity("CURRENT")


	PrintDebug(GetEntityName() )
	PrintDebug( " End")
end
