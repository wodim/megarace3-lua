Dagger_of_Justice={}

function Dagger_of_Justice:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", -10, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, -20)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 50)

	-- Type de chargement :
	SetModuleChargingType (2)
	SetModuleChargingTimingDelayed (4.000000)
	SetModuleActiveConsoNrjDelayedMin (200.000000)
	SetModuleValTirDelayedMin (300.000000)

	-- Attak module parameters :
	SetModuleValTir (600)
	SetModuleValTirNRJ (0)
	SetModuleTime (0, 0, 0)
	SetModuleConso (450, 0, 0, 0, FALSE)
end

function Dagger_of_Justice:Update()
end

function Dagger_of_Justice:End()
end

function Dagger_of_Justice:Fnc1()
	StartMissile ("SpineBee3", 4000, nil)
end

function Dagger_of_Justice:Fnc2()
end

function Dagger_of_Justice:KillSfx()
end
