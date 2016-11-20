noturn={ bonnegSFX }

function noturn:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName() .. "nt"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( GetEntityName(), self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_NoTurn")
end



function noturn:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_NoTurn", "SELECTED", 0, -1)
		PlayBoyleComment("B_NoTurn")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end

function noturn:ReInit()
	startSFX( self.bonnegSFX )
end


function noturn:End()
end


function noturn:Fnc1()
	-- on active le bonus
	StartBonusMissile( "noturn_Effect" , GetPodUserName(), "NoTurnMissile", 10000, nil )
end

function noturn:Fnc2()
end

function noturn:Fnc3()
end