Scale_of_Blade={}

function Scale_of_Blade:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 500, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 500, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.020000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (1)

	-- Speed module parameters :
	SetModuleTime (0, 0, 0)
	SetModuleConso (100, 0, 50, 0, FALSE)
end

function Scale_of_Blade:Update()
end

function Scale_of_Blade:End()
end

function Scale_of_Blade:Fnc1()
	AddModuleSpeed ("CURRENT", 100, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Scale_of_Blade:Fnc2()
end

function Scale_of_Blade:KillSfx()
end
