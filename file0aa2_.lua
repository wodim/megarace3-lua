Sight_of_Ghost={}

function Sight_of_Ghost:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 2000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 2000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, -30)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, -30)

	-- Type de chargement :
	SetModuleChargingType (2)
	SetModuleChargingTimingDelayed (2.000000)
	SetModuleActiveConsoNrjDelayedMin (0.000000)
	SetModuleValTirDelayedMin (0.000000)

	-- Shield module parameters :
	SetModuleDegaToNrj (FALSE)
	SetModuleMissileDeflection (FALSE)
	SetModuleMaxLifePointsShield (200)
	SetModuleTime (0, 0, 7)
	SetModuleConso (200, 0, 0, 0, FALSE)
end

function Sight_of_Ghost:Update()
end

function Sight_of_Ghost:End()
end

function Sight_of_Ghost:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
end

function Sight_of_Ghost:Fnc2()
end

function Sight_of_Ghost:KillSfx()
end
