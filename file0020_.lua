topspeed_Effect={  }

function topspeed_Effect:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	OffBonus( "CURRENT" )
end


function topspeed_Effect:End()

end


function topspeed_Effect:Fnc1()
	-- on fixe la durée d'activité du bonus à 5 seconde
	SetBonusDuration( GetPodUserName(), 5000 )
	SetBonusTopSpeed( GetPodUserName() )
	PrintDebug( GetPodUserName() .. "Start TopSpeed"  )

end

function topspeed_Effect:Fnc2()
end

function topspeed_Effect:Fnc3()
	-- on restaure les propriétés physiques de l'entité
	RestoreBonusDynamic( GetPodUserName() )
	PrintDebug( GetPodUserName() .. "Stop TopSpeed"  )
end