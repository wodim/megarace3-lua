MineMissile={ missileSFX, explosionSFX }

function MineMissile:Init()
	HideEntity("CURRENT")
	self.missileSFX = GetEntityName() .. "mineglo"
	self.explosionSFX = GetEntityName() .. "explosion"

	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_mineglo" )
	loadSFX( "CURRENT", self.explosionSFX, "sfx_explosion" )

	SetEntityDamage("CURRENT",250)

	ChargeSon("BonusMIN")
	
	ChargeSon("ImpMis")
end

function MineMissile:Update()
	JoueSon3D("BonusMIN", "CURRENT", FALSE, -1)
	ShowEntity("CURRENT")
	startSFX( self.missileSFX )
	stopSFX( self.explosionSFX )
end

function MineMissile:End()
end

function MineMissile:Fnc1()
	
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
