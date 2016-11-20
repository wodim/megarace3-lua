Module01={}

function Module01:Init()
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

	-- Attak module parameters :
	SetModuleValTir (200)
	SetModuleValTirNRJ (0)
	SetModuleTime (1, 0, 0)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Module01:Update()
end

function Module01:End()
end

function Module01:Fnc1()
	StartMissile ("SpineBee1", 3000, nil)
end

function Module01:Fnc2()
end

function Module01:KillSfx()
end
