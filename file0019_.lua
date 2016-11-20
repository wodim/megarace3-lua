repulsion={ bonnegSFX  } 

function repulsion:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "inv"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Repuls")
end



function repulsion:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Repuls", "SELECTED", 0, -1)
		PlayBoyleComment("B_Repuls")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function repulsion:ReInit()
	startSFX( self.bonnegSFX )
end


function repulsion:End()

end

function repulsion:Fnc1()
	SetBonusDuration( GetPodUserName(), 1000 )
	UseRepulsionBonus( GetPodUserName() ,  50,  100,  500)
	startSFX( GetPodUserName() .. "bonus_repulsion" )
end


function repulsion:Fnc2()
end


function repulsion:Fnc3()
	stopSFX( GetPodUserName() .. "bonus_repulsion" )
end