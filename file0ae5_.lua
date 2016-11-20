_Unicorns_Protection_Unicorns_Ride={}

function _Unicorns_Protection_Unicorns_Ride:Init()
	-- Bonus / Malus :
	AddDefinitiveSpeed ("CURRENT", -5, FALSE)
	AddDefinitiveAcceleration ("CURRENT", 0.100000, FALSE)
	AddDefinitiveBrake ("CURRENT", 0, FALSE)
	AddDefinitiveSideBrake ("CURRENT", 0, FALSE)
	AddDefinitiveGrip ("CURRENT", 0.000000, FALSE)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXENERGIE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_MAXLIFE, 0)

	NotifyToEntiy ("CURRENT", TE_ADD_TIME_CHGT_MODULE, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_REGENERATION_NRJ, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_REGENERATION_VIE, 0)

	-- Module de defense :
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	NotifyToEntiy ("CURRENT", TE_ADD_DAMAGE_COLL_FACTOR, 0)
	AddPodModuleConso ("CURRENT", 1, 0, 0, 0, 0)

	-- Module de vitesse :
	AddModuleSpeed ("CURRENT", 0, 0)
	AddPodModuleConso ("CURRENT", 2, 0, 0, 0, 0)

end

function _Unicorns_Protection_Unicorns_Ride:Update()
end

function _Unicorns_Protection_Unicorns_Ride:End()
end
