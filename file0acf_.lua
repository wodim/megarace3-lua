Gazelles_Power={}

function Gazelles_Power:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 20, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.050000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 30)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, -40)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Speed module parameters :
	SetModuleTime (0, 0, 5)
	SetModuleConso (400, 0, 0, 0, FALSE)
end

function Gazelles_Power:Update()
end

function Gazelles_Power:End()
end

function Gazelles_Power:Fnc1()
	AddModuleSpeed ("CURRENT", 150, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Gazelles_Power:Fnc2()
end

function Gazelles_Power:KillSfx()
end
