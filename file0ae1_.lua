Module02={}

function Module02:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Shield module parameters :
	SetModuleDegaToNrj (FALSE)
	SetModuleMissileDeflection (TRUE)
	SetModuleMaxLifePointsShield (0)
	SetModuleTime (0, 0, 6)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Module02:Update()
end

function Module02:End()
end

function Module02:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, -1000)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, -1000)
end

function Module02:Fnc2()
end

function Module02:KillSfx()
end
