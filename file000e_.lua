invisibility={ bonnegSFX } 

function invisibility:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "inv"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Invis")
	ChargeSon("BonusINV")
end



function invisibility:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Invis", "SELECTED", 0, -1)
		PlayBoyleComment("B_Invis")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function invisibility:ReInit()
	startSFX( self.bonnegSFX )
end


function invisibility:End()

end

function invisibility:Fnc1()
	SetBonusDuration( GetPodUserName(), 5000 )
	JoueSon3D("BonusINV", GetPodUserName(), TRUE, -1)
	startSFX( GetPodUserName() .. "bonus_invisibility" )
	SetInvisibility( GetPodUserName() , 1 )
end


function invisibility:Fnc2()
end


function invisibility:Fnc3()
	StoppeSon("BonusINV", GetPodUserName())
	stopSFX( GetPodUserName() .. "bonus_invisibility" )
	SetInvisibility( GetPodUserName() , 0 )
end
