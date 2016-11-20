Sharks_Power={}

function Sharks_Power:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 15, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", -1500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -1500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.030000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, -10)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Speed module parameters :
	SetModuleTime (0, 0, 3)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Sharks_Power:Update()
end

function Sharks_Power:End()
end

function Sharks_Power:Fnc1()
	AddModuleSpeed ("CURRENT", 200, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Sharks_Power:Fnc2()
end

function Sharks_Power:KillSfx()
end
