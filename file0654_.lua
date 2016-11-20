mine={ missileSFX, explosionSFX }

function mine:Init()
	ChargeSon("BonusMIN")

	HideEntity("CURRENT")
	self.missileSFX = GetEntityName() .. "mineglo"
	self.explosionSFX = GetEntityName() .. "explosion"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_mineglo" )
	loadSFX( "CURRENT", self.explosionSFX, "sfx_explosion" )

	SetEntityDamage("CURRENT",250)
	
	ChargeSon("ImpMis")
end

function mine:Update()
	JoueSon3D("BonusMIN", GetEntityName(), 0, -1)
	ShowEntity("CURRENT")
	startSFX( self.missileSFX )
	stopSFX( self.explosionSFX )
end

function mine:End()
end

function mine:Fnc1()
	
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
	
	HideEntity("CURRENT")
	stopSFX( self.missileSFX )
	startSFX( self.explosionSFX )
end
