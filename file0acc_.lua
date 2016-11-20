Diamond_Ray={}

function Diamond_Ray:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 1000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 1000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 50)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (2)
	SetModuleChargingTimingDelayed (3.000000)
	SetModuleActiveConsoNrjDelayedMin (100.000000)
	SetModuleValTirDelayedMin (100.000000)

	-- Attak module parameters :
	SetModuleValTir (300)
	SetModuleValTirNRJ (0)
	SetModuleTime (2, 0, 0)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Diamond_Ray:Update()
end

function Diamond_Ray:End()
end

function Diamond_Ray:Fnc1()
	StartMissile ("SpineBee1", 3000, nil)
end

function Diamond_Ray:Fnc2()
end

function Diamond_Ray:KillSfx()
end
