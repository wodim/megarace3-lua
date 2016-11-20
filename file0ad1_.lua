Gillettes_Grid={}

function Gillettes_Grid:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", -10, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", -1500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -1500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.020000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 20)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 20)

	-- Type de chargement :
	SetModuleChargingType (2)
	SetModuleChargingTimingDelayed (2.000000)
	SetModuleActiveConsoNrjDelayedMin (0.000000)
	SetModuleValTirDelayedMin (0.000000)

	-- Shield module parameters :
	SetModuleDegaToNrj (FALSE)
	SetModuleMissileDeflection (FALSE)
	SetModuleMaxLifePointsShield (500)
	SetModuleTime (0, 0, 11)
	SetModuleConso (350, 0, 0, 0, FALSE)
end

function Gillettes_Grid:Update()
end

function Gillettes_Grid:End()
end

function Gillettes_Grid:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
end

function Gillettes_Grid:Fnc2()
end

function Gillettes_Grid:KillSfx()
end
