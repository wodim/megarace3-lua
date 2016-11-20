Unicorns_Ride={}

function Unicorns_Ride:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", -5, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.050000, FALSE)
	AddDefinitiveBrake ("CURRENT", -4000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -4000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 80)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 20)

	-- Type de chargement :
	SetModuleChargingType (1)

	-- Speed module parameters :
	SetModuleTime (0, 0, 0)
	SetModuleConso (150, 0, 80, 0, FALSE)
end

function Unicorns_Ride:Update()
end

function Unicorns_Ride:End()
end

function Unicorns_Ride:Fnc1()
	AddModuleSpeed ("CURRENT", 150, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Unicorns_Ride:Fnc2()
end

function Unicorns_Ride:KillSfx()
end
