Iron_Claw={}

function Iron_Claw:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", -10, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 2500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 2500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.020000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Attak module parameters :
	SetModuleValTir (500)
	SetModuleValTirNRJ (0)
	SetModuleTime (3, 0, 0)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Iron_Claw:Update()
end

function Iron_Claw:End()
end

function Iron_Claw:Fnc1()
	StartMissile ("SpineBee6", 4000, nil)
end

function Iron_Claw:Fnc2()
end

function Iron_Claw:KillSfx()
end
