gant_col2={}

-- Function 'Init'
function gant_col2:Init()

	PrintDebug("gant_col2 ...")
	
	EnableCollisionDetection("CURRENT", FALSE)
	MakeSameColliAsTrack("CURRENT")
	
	SetEntityDamage("CURRENT", GT_COL2_LIFE)
	
	HideEntity("CURRENT")
	
end

-- Function 'Update'
function gant_col2:Update()
	
end

-- Function 'End'
function gant_col2:End()
	
end

-- Function 'Notify'
function gant_col2:Notify(event)

	if event == TM_ENTITY_COLLISION then
		--JoueSon3D("SoldaTir", "CURRENT", FALSE, -1)
	end
	
end
