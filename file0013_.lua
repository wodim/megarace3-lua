topspeed={ bonnegSFX }

function topspeed:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "ts"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( GetEntityName(), self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Speed")
end



function topspeed:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Speed", "SELECTED", 0, -1)
		PlayBoyleComment("B_Speed")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function topspeed:ReInit()
	startSFX( self.bonnegSFX )
end

function topspeed:End()
end


function topspeed:Fnc1()
	-- on active le bonus
	StartBonusMissile( "topspeed_Effect" , GetPodUserName(), "TopSpeedMissile", 10000, nil )
end

function topspeed:Fnc2()
end

function topspeed:Fnc3()
end