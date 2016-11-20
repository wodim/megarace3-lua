inversecommand_Effect={  } 

function inversecommand_Effect:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	OffBonus( "CURRENT" )
end


function inversecommand_Effect:End()

end

function inversecommand_Effect:Fnc1()
	JoueSon3D("BonusINV", GetPodUserName(), 1, -1)
	SetBonusDuration( GetPodUserName(), 5000 )
	SetInvcmd( GetPodUserName(), 1 );
	PrintDebug( GetPodUserName() .. "Start InverseCommand"  )
end


function inversecommand_Effect:Fnc2()
end


function inversecommand_Effect:Fnc3()
	SetInvcmd( GetPodUserName(), 0 );
	PrintDebug( GetPodUserName() .. "Stop InverseCommand"  )
end
