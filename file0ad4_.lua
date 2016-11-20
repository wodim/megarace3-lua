Hellcrush={}

function Hellcrush:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", -5, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 3500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 3500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.050000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 20)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 20)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Speed module parameters :
	SetModuleTime (0, 0, 6)
	SetModuleConso (450, 0, 0, 0, FALSE)
end

function Hellcrush:Update()
end

function Hellcrush:End()
end

function Hellcrush:Fnc1()
	AddModuleSpeed ("CURRENT", 200, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Hellcrush:Fnc2()
end

function Hellcrush:KillSfx()
end
