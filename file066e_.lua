SpineBee={ missileSFX, explosionSFX }

function SpineBee:Init()
	self.missileSFX = GetEntityName() .. "reactor"
	self.explosionSFX = GetEntityName() .. "explosion"

	loadSFX( "CURRENT", self.missileSFX, "sfx_L2queenshoot" )
	loadSFX( "CURRENT", self.explosionSFX, "sfx_blast" )

	HideEntity("CURRENT")

	ChargeSon("Attaque1")
end

function SpineBee:Update()
	JoueSon3D ("Attaque1", "CURRENT", 0, -1)
	startSFX( self.missileSFX )
	stopSFX( self.explosionSFX )
	ShowEntity("CURRENT")
end

function SpineBee:End()
end

function SpineBee:Fnc1()
	stopSFX( self.missileSFX )
	startSFX( self.explosionSFX )
	HideEntity("CURRENT")
end

