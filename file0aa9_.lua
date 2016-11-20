Unicorns_Protection={}

function Unicorns_Protection:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 10)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 10)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Shield module parameters :
	SetModuleDegaToNrj (FALSE)
	SetModuleMissileDeflection (FALSE)
	SetModuleMaxLifePointsShield (0)
	SetModuleTime (1, 0, 3)
	SetModuleConso (200, 0, 0, 0, FALSE)
end

function Unicorns_Protection:Update()
end

function Unicorns_Protection:End()
end

function Unicorns_Protection:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
end

function Unicorns_Protection:Fnc2()
end

function Unicorns_Protection:KillSfx()
end
