Damocles={}

function Damocles:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 50)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 30)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Attak module parameters :
	SetModuleValTir (200)
	SetModuleValTirNRJ (0)
	SetModuleTime (1, 0, 0)
	SetModuleConso (150, 0, 0, 0, FALSE)
end

function Damocles:Update()
end

function Damocles:End()
end

function Damocles:Fnc1()
	StartMissile ("SpineBee5", 2500, nil)
end

function Damocles:Fnc2()
end

function Damocles:KillSfx()
end
