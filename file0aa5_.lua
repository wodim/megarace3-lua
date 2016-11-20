Spines_Bee={}

function Spines_Bee:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 10)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Attak module parameters :
	SetModuleValTir (200)
	SetModuleValTirNRJ (0)
	SetModuleTime (0, 0, 0)
	SetModuleConso (50, 0, 0, 0, FALSE)
end

function Spines_Bee:Update()
end

function Spines_Bee:End()
end

function Spines_Bee:Fnc1()
	StartMissile ("SpineBee4", 2000, nil)
end

function Spines_Bee:Fnc2()
end

function Spines_Bee:KillSfx()
end
