inversecommand={ bonnegSFX } 

function inversecommand:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "inv"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_InvCom")
end



function inversecommand:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_InvCom", "SELECTED", 0, -1)
		PlayBoyleComment("B_InvCom")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function inversecommand:ReInit()
	startSFX( self.bonnegSFX )
end


function inversecommand:End()

end

function inversecommand:Fnc1()
	JoueSon3D("BonusINV", GetPodUserName(), FALSE, -1)
	StartBonusMissile( "inversecommand_Effect" , GetPodUserName(), "InverseCommandMissile", 10000, nil )
end


function inversecommand:Fnc2()
end


function inversecommand:Fnc3()
end