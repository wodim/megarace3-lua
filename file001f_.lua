noturn_Effect={  }

function noturn_Effect:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	OffBonus( "CURRENT" )

	ChargeSon("NoTurn")
end


function noturn_Effect:End()
end


function noturn_Effect:Fnc1()
	-- on fixe la durée d'activité du bonus à 5 secondes
	SetBonusDuration( GetPodUserName(), 2500 )
	SetBonusNoTurn( GetPodUserName() )
	JoueSon3D ("NoTurn", GetPodUserName(), TRUE, -1)
	PrintDebug( GetPodUserName() .. "Start NoTurn"  )
end

function noturn_Effect:Fnc2()
end

function noturn_Effect:Fnc3()
	-- on restaure les propriétés physiques de l'entité
	RestoreBonusDynamic( GetPodUserName() )
	StoppeSon("NoTurn", GetPodUserName())
	PrintDebug( GetPodUserName() .. "Stop NoTurn"  )
end