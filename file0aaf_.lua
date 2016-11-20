Vampires_Celerity={}

function Vampires_Celerity:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 10, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", -1000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -1000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Speed module parameters :
	SetModuleTime (0, 0, 3)
	SetModuleConso (350, 0, 0, 0, FALSE)
end

function Vampires_Celerity:Update()
end

function Vampires_Celerity:End()
end

function Vampires_Celerity:Fnc1()
	AddModuleSpeed ("CURRENT", 150, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)

end

function Vampires_Celerity:Fnc2()
end

function Vampires_Celerity:KillSfx()
end
