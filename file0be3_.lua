poupe={}

-- Function 'Init'
function poupe:Init()

	PrintDebug("poupe ...")
	
	NotifyToEntiy("CURRENT", TE_ADD_MAXLIFE, PR_LIFE)
	NotifyToEntiy("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, PR_FACT_MISS)
	
	EnableCollisionDetection("CURRENT", FALSE)
	
	SetEntityDamage("CURRENT", PR_COL_LIFE)
	
 	LoadEntityAnim("CURRENT", "poupe")

end

-- Function 'Update'
function poupe:Update()
	
end

-- Function 'End'
function poupe:End()

end

-- Function 'Notify'
function poupe:Notify(event)

	if event == TM_ENTITY_DEAD then
		KillEntity("CURRENT")
	end

	if event == TM_ENTITY_COLLISION then
		JoueSon3D("PoupIMP", "CURRENT", FALSE, -1)
	end

end

-- Function 'Clock'
function poupe:Clock(Id)

	if Id == 0 then
 		StartEntityAnim("CURRENT", "poupe", -1, 1, 1)
		EnableCollisionDetection("CURRENT", TRUE)
		JoueSon3D("PoupMOV", "CURRENT", FALSE, -1)
	end
	
end