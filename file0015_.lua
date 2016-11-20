smoke={ bonnegSFX }

function smoke:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName() .. "nt"
	self.bonnegSFX = "bonneg"
	self.bonnegSFX = loadSFX( GetEntityName(), self.bonnegSFX, "sfx_bonneg" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusGEN")
	ChargeVoice("B_Smoke")
end

function smoke:Take()
	JoueSon3D("BonusGEN", "SELECTED", FALSE, -1)
	if IsAPlayer("SELECTED")==TRUE then
		--JoueSon3D("B_Smoke", "SELECTED", FALSE, -1)
		PlayBoyleComment("B_Smoke")
	end
	AddBonus( "CURRENT", "SELECTED" )
	OffBonus( "CURRENT" )
	stopSFX( self.bonnegSFX )
end


function smoke:ReInit()
	startSFX( self.bonnegSFX )
end


function smoke:End()
end


function smoke:Fnc1()
	StartMissile ("SmokeMissile",10000,nil)
end

function smoke:Fnc2()
end

function smoke:Fnc3()
end