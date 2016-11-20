Cocatrix_Eyes={}

function Cocatrix_Eyes:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", -1000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -1000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.010000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Attak module parameters :
	SetModuleValTir (250)
	SetModuleValTirNRJ (250)
	SetModuleTime (0, 0, 0)
	SetModuleConso (150, 0, 0, 0, FALSE)
end

function Cocatrix_Eyes:Update()
end

function Cocatrix_Eyes:End()
end

function Cocatrix_Eyes:Fnc1()
	StartMissile ("SpineBee8", 2000, nil)
end

function Cocatrix_Eyes:Fnc2()
end

function Cocatrix_Eyes:KillSfx()
end
