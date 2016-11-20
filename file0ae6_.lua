Hellcrush2={}

function Hellcrush2:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 30, FALSE)
	AddDefinitiveAcceleration ("CURRENT", -0.100000, FALSE)
	AddDefinitiveBrake ("CURRENT", 1000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 2000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.100000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Speed module parameters :
	SetModuleTime (2, 0, 10)
	SetModuleConso (700, 0, 0, 0, FALSE)
end

function Hellcrush2:Update()
end

function Hellcrush2:End()
end

function Hellcrush2:Fnc1()
	AddModuleSpeed ("CURRENT", 250, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Hellcrush2:Fnc2()
end

function Hellcrush2:KillSfx()
end
