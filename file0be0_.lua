o3d_loco={}

-- Function 'Init'
function o3d_loco:Init()

	PrintDebug("o3d_loco ...")
	
	LoadEntityAnim("CURRENT", "loco01")
	StartEntityAnim("CURRENT", "loco01", -1, 1, LOCO_ANIM_RATIO)
	
	loadSFX("CURRENT", "transpa_loco", "sfx_loco_L6")
	startSFX("transpa_loco")
	
end

-- Function 'Update'
function o3d_loco:Update()

end

-- Function 'End'
function o3d_loco:End()

end

-- Function 'Notify'
function o3d_loco:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim("CURRENT", "loco01", -1, 1, LOCO_ANIM_RATIO)
		stopSFX("transpa_loco")
		startSFX("transpa_loco")
	end
	
end
