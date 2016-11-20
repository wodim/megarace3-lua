steal={ bonnegSFX }

function steal:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "nt"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Steal")
end



function steal:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Steal", "SELECTED", 0, -1)
		PlayBoyleComment("B_Steal")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function steal:ReInit()
	startSFX( self.bonnegSFX )
end

function steal:End()
end


function steal:Fnc1()
	-- on lance le missile
	StartMissile ( "StealMissile",10000, nil )
end

function steal:Fnc2()
end

function steal:Fnc3()
end