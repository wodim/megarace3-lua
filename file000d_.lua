mines={ bonnegSFX }

function mines:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "mines"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( GetEntityName(), self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Mine")
end


function mines:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Mine", "SELECTED", 0, -1)
		PlayBoyleComment("B_Mine")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function mines:ReInit()
	startSFX( self.bonnegSFX )
end

function mines:End()
end


function mines:Fnc1()
	-- on initialise les mines
	InitMines( GetPodUserName(), 15000, 3, 700 )

	-- on fixe la durée d'activité du bonus à 10 secondes
	SetBonusDuration( GetPodUserName(), 10000 )
end


function mines:Fnc2()
	-- on largue les mines tant qu'on en a
	StartMine( GetPodUserName() )
end


function mines:Fnc3()
end