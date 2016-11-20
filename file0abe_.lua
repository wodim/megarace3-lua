Angels_Blessing={}

function Angels_Blessing:Init()
	-- Bonus/malus values :
	AddDefinitiveSpeed ("CURRENT", 0, FALSE)
	AddDefinitiveAcceleration ("CURRENT", -0.050000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.010000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 40)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 50)

	-- Type de chargement :
	SetModuleChargingType (0)

	-- Shield module parameters :
	SetModuleDegaToNrj (FALSE)
	SetModuleMissileDeflection (FALSE)
	SetModuleMaxLifePointsShield (0)
	SetModuleTime (0, 3, 6)
	SetModuleConso (300, 0, 0, 0, FALSE)
end

function Angels_Blessing:Update()
end

function Angels_Blessing:End()
end

function Angels_Blessing:Fnc1()
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
end

function Angels_Blessing:Fnc2()
end

function Angels_Blessing:KillSfx()
end
