Vampires_Sign={}

function Vampires_Sign:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", -10, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, -30)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 100)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Shield module parameters :
	SetModuleDegaToNrj (TRUE)
	SetModuleRatioDegaToNrj (0.700000)
	SetModuleMissileDeflection (FALSE)
	SetModuleMaxLifePointsShield (0)
	SetModuleTime (0, 0, 4)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Vampires_Sign:Update()
end

function Vampires_Sign:End()
end

function Vampires_Sign:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, -1500)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
end

function Vampires_Sign:Fnc2()
end

function Vampires_Sign:KillSfx()
end
