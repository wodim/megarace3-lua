Module03={}

function Module03:Init()
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

	-- Speed module parameters :
	SetModuleTime (1, 0, 5)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Module03:Update()
end

function Module03:End()
end

function Module03:Fnc1()
	AddModuleSpeed ("CURRENT", 100, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Module03:Fnc2()
end

function Module03:KillSfx()
end
