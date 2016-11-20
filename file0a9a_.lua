Quezacoatls_Feather={}

function Quezacoatls_Feather:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 20)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	-- Type de chargement :
	SetModuleChargingType (1)

	-- Shield module parameters :
	SetModuleDegaToNrj (FALSE)
	SetModuleMissileDeflection (FALSE)
	SetModuleMaxLifePointsShield (0)
	SetModuleTime (0, 0, 0)
	SetModuleConso (120, 0, 80, 0, FALSE)
end

function Quezacoatls_Feather:Update()
end

function Quezacoatls_Feather:End()
end

function Quezacoatls_Feather:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
end

function Quezacoatls_Feather:Fnc2()
end

function Quezacoatls_Feather:KillSfx()
end
