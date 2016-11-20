gant_col={}

-- Function 'Init'
function gant_col:Init()

	PrintDebug("gant_col ...")
	
	EnableCollisionDetection("CURRENT", FALSE)
	MakeSameColliAsTrack("CURRENT")
	
	SetEntityDamage("CURRENT", GT_COL_LIFE)
	
	HideEntity("CURRENT")
	
end

-- Function 'Update'
function gant_col:Update()
	
end

-- Function 'End'
function gant_col:End()
	
end

-- Function 'Notify'
function gant_col:Notify(event)

	if event == TM_ENTITY_COLLISION then
		JoueSon3D("GantATT", "Player1", FALSE, -1)
	end
	
end
