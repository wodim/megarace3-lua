Hermes_Spirit={}

function Hermes_Spirit:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.020000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, -20)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Speed module parameters :
	SetModuleTime (0, 0, 3)
	SetModuleConso (200, 0, 0, 0, FALSE)
end

function Hermes_Spirit:Update()
end

function Hermes_Spirit:End()
end

function Hermes_Spirit:Fnc1()
	AddModuleSpeed ("CURRENT", 100, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Hermes_Spirit:Fnc2()
end

function Hermes_Spirit:KillSfx()
end
