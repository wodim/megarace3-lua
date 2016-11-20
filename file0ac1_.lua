Angels_Light={}

function Angels_Light:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", -1500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -1500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.030000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 80)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, -30)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Attak module parameters :
	SetModuleValTir (400)
	SetModuleValTirNRJ (500)
	SetModuleTime (3, 0, 0)
	SetModuleConso (600, 0, 0, 0, FALSE)
end

function Angels_Light:Update()
end

function Angels_Light:End()
end

function Angels_Light:Fnc1()
	StartMissile ("SpineBee2", 4000, nil)
end

function Angels_Light:Fnc2()
end

function Angels_Light:KillSfx()
end
