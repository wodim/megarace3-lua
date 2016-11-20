SpineBee8={ missileSFX, explosionSFX }

function SpineBee8:Init()
	self.missileSFX = GetEntityName() .. "reactor"
	self.explosionSFX = GetEntityName() .. "explosion"

	loadSFX( "CURRENT", self.missileSFX, "sfx_missile9" )
	loadSFX( "CURRENT", self.explosionSFX, "sfx_explosion" )
--	loadSFX( "CURRENT", self.explosionSFX, "sfx_boom0" )

	HideEntity("CURRENT")

	ChargeSon("Attaque1")
	ChargeSon("ImpMis")
end

function SpineBee8:Update()
	JoueSon3D ("Attaque1", "CURRENT", 0, -1)
	startSFX( self.missileSFX )
	stopSFX( self.explosionSFX )
	ShowEntity("CURRENT")
end

function SpineBee8:End()
end

function SpineBee8:Fnc1()

	local hitEntity = HitEntity("CURRENT")	
	if hitEntity ~= nil then
		if hitEntity == GetNamePlayer1() then
			JoueSon2D("ImpMis", hitEntity, 0, -1)
		else
			JoueSon3D("ImpMis", hitEntity, 0, -1)			
		end
	else
		JoueSon3D("ImpMis", "CURRENT", 0, -1)
	end
	
	stopSFX( self.missileSFX )
	startSFX( self.explosionSFX )
	HideEntity("CURRENT")
end

