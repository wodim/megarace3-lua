life={bonnegSFX}

function life:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "blind"
	self.bonnegSFX = "bonpos"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonpos" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusVIE")
end



function life:Take()
		JoueSon3D("BonusVIE", "SELECTED", FALSE, -1)
		NotifyToEntiy("SELECTED",TE_ADD_LIFE,300)
		OffBonus("CURRENT")
		stopSFX( self.bonnegSFX )
end


function life:ReInit()
	startSFX( self.bonnegSFX )
end

function life:End()
end
