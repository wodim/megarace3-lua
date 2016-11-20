blockmodule_Effect={  } 

function blockmodule_Effect:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	OffBonus( "CURRENT" )
end


function blockmodule_Effect:End()

end

function blockmodule_Effect:Fnc1()
	JoueSon3D("BonusINV", GetPodUserName(), 1, -1)
	SetBonusDuration( GetPodUserName(), 15000 )
	SetBlkmod( GetPodUserName(), 1 )
	PrintDebug( GetPodUserName() .. "Start BlockModule"  )
end


function blockmodule_Effect:Fnc2()
end


function blockmodule_Effect:Fnc3()
	SetBlkmod( GetPodUserName(), 0 )
	PrintDebug( GetPodUserName() .. "Stop BlockModule"  )
end