PractAttIA={}

function PractAttIA:Init()
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
	SetModuleValTir (250)
	SetModuleValTirNRJ (0)
	SetModuleTime (0, 0, 0)
	SetModuleConso (200, 0, 0, 0, FALSE)
end

function PractAttIA:Update()
end

function PractAttIA:End()
end

function PractAttIA:Fnc1()
	StartMissile ("SpineBee5", 4000, nil)
end

function PractAttIA:Fnc2()
end

function PractAttIA:KillSfx()
end
