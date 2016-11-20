Iron_Claw_Vampires_Sign_Vampires_Celerity={}

function Iron_Claw_Vampires_Sign_Vampires_Celerity:Init()
	-- Bonus / Malus :
	AddDefinitiveSpeed ("CURRENT", 5, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.050000, FALSE)
	AddDefinitiveBrake ("CURRENT", -2000, FALSE)
	AddDefinitiveSideBrake ("CURRENT", -2000, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.100000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 30)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, -40)

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

function Iron_Claw_Vampires_Sign_Vampires_Celerity:Update()
end

function Iron_Claw_Vampires_Sign_Vampires_Celerity:End()
end
