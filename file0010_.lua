energy={bonnegSFX}

function energy:Init()
	--PrintDebug("Init Bonus: ")
	--PrintDebug(GetEntityName())
	--self.bonnegSFX = GetEntityName().. "nrj"
	self.bonnegSFX = "bonpos"
	self.bonnegSFX = loadSFX( "CURRENT", self.bonnegSFX, "sfx_bonpos" )
	startSFX( self.bonnegSFX )

	ChargeSon("BonusNRJ")
end



function energy:Take()
	JoueSon3D("BonusNRJ", "SELECTED", FALSE, -1)
	NotifyToEntiy("SELECTED",TE_ADD_ENERGIE,250)
	OffBonus("CURRENT")
	stopSFX( self.bonnegSFX )
end


function energy:ReInit()
	startSFX( self.bonnegSFX )
end

function energy:End()
end
