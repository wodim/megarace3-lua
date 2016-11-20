motorup={ bonnegSFX }

function motorup:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "mu"
	self.bonnegSFX = "bonpos"
	self.bonnegSFX = loadSFX( GetEntityName(), self.bonnegSFX, "sfx_bonpos" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_MotorU")
	ChargeSon("BonusPWR")
end



function motorup:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_MotorU", "SELECTED", 0, -1)
		PlayBoyleComment("B_MotorU")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function motorup:ReInit()
	startSFX( self.bonnegSFX )
end

function motorup:End()
end


function motorup:Fnc1()
	JoueSon3D("BonusPWR", GetPodUserName(), 0, -1)

	-- on ajoute 20% de vitesse au pod
	AddBonusSpeed( GetPodUserName(), 0.2, 1 )

	-- mais aussi 10% d'accélération
	AddBonusAcceleration( GetPodUserName(), 0.1, 1 )

	-- on fixe la durée d'activité du bonus à 6 secondes
	SetBonusDuration( GetPodUserName(), 6000 )
end


function motorup:Fnc2()
end

function motorup:Fnc3()
	-- on restaure la vitesse originale
	RestoreBonusSpeed( GetPodUserName() )

	-- et aussi l'accélération
	RestoreBonusAcceleration( GetPodUserName() )
end