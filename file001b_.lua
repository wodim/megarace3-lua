blockmodule={ bonnegSFX } 

function blockmodule:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "inv"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Block")
end



function blockmodule:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Block", "SELECTED", 0, -1)
		PlayBoyleComment("B_Block")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function blockmodule:ReInit()
	startSFX( self.bonnegSFX )
end


function blockmodule:End()

end

function blockmodule:Fnc1()
	JoueSon3D("BonusINV", GetPodUserName(), FALSE, -1)
	StartBonusMissile( "blockmodule_Effect" , GetPodUserName(), "BlockModuleMissile", 10000, nil )
end


function blockmodule:Fnc2()
end


function blockmodule:Fnc3()
end