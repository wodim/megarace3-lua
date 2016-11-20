blind_Effect={  }

function blind_Effect:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	OffBonus( "CURRENT" )
	self.blindenable=0
end


function blind_Effect:End()
end

function blind_Effect:Fnc1()
	-- on fixe la durée d'activité du bonus blind à 5 seconde
	SetBonusDuration( GetPodUserName(), 15000 )
	SetBlind( GetPodUserName(),1 )
	PrintDebug( GetPodUserName() .. "Start Blind"  )
	if ( GetPodUserName() == GetNamePlayer1() ) then
		startSFX( "camfx_blind" )
	end
end

function blind_Effect:Fnc2()

end

function blind_Effect:Fnc3()
	-- on stop le blind
	SetBlind( GetPodUserName(),0 )
	PrintDebug( GetPodUserName() .. "Stop Blind"  )
	if ( GetPodUserName() == GetNamePlayer1() ) then
		stopSFX( "camfx_blind" )
	end
end
