blind={ bonnegSFX }

function blind:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "blind"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Blind")
end

function blind:Take()
	JoueSon3D("BonusGEN", "CURRENT", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Blind", "CURRENT", 0, -1)
		PlayBoyleComment("B_Blind")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus("CURRENT")
	stopSFX( self.bonnegSFX )
end

function blind:ReInit()
	startSFX( self.bonnegSFX )
end

function blind:End()
	stopSFX( self.bonnegSFX )
end

function blind:Fnc1()
	JoueSon3D("BonusINV", GetPodUserName(), FALSE, -1)
	StartBonusMissile( "blind_Effect" , GetPodUserName(), "BlindMissile", 10000, nil )
end


function blind:Fnc2()
end


function blind:Fnc3()
end