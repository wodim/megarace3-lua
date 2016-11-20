cancel={ bonnegSFX }

function cancel:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "nt"
	self.bonnegSFX = "bonpos"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonpos" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Cancel")
	ChargeSon("Cancel")
end



function cancel:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Cancel", "SELECTED", 0, -1)
		PlayBoyleComment("B_Cancel")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function cancel:ReInit()
	startSFX( self.bonnegSFX )
end

function cancel:End()
end


function cancel:Fnc1()
	JoueSon3D("Cancel", GetPodUserName(), FALSE, -1)
	BonusCancel( GetPodUserName() )
end

function cancel:Fnc2()
end

function cancel:Fnc3()
end
