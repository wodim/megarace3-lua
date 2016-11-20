projection={}

function projection:Init()
	
	NotifyToEntity("CURRENT", TE_ADD_MAXLIFE, QMINE_LIFE)
	NotifyToEntity("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, QMINE_FACT_MISS)
	SetEntityDamage("CURRENT", QMINE_COL_LIFE)
	
	MoveEntity("CURRENT", "t_queen_bidon", "", 0, 0, 0)
	
	--SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

end


function projection:Update()

end


function projection:End()

end


function projection:Notify(event)

	--if event == TM_ENTITY_DEAD then
	--end

end