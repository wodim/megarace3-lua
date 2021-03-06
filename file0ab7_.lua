Diamond_Ray_Sight_of_Ghost_Hellcrush={}

function Diamond_Ray_Sight_of_Ghost_Hellcrush:Init()
	-- Bonus / Malus :
	AddDefinitiveSpeed ("CURRENT", 20, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.000000, FALSE)
	AddDefinitiveBrake ("CURRENT", -2000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -2000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.100000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 20)

	NotifyToEntiy ("CURRENT", TE_ADD_TIME_CHGT_MODULE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_REGENERATION_NRJ, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_REGENERATION_VIE, 0)

	-- Module d'attaque :
	AddPodModuleValTir ("CURRENT" ,0, 0)
	AddPodModuleConso ("CURRENT", 0, 0, 0, 0, 0)

	-- Module de defense :
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
	AddPodModuleConso ("CURRENT", 1, 0, 0, 0, 0)

	-- Module de vitesse :
	AddModuleSpeed ("CURRENT", 0, 0)
	AddPodModuleConso ("CURRENT", 2, 0, 0, 0, 0)

end

function Diamond_Ray_Sight_of_Ghost_Hellcrush:Update()
end

function Diamond_Ray_Sight_of_Ghost_Hellcrush:End()
end
