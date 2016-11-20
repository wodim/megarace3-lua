o3d_partor01={enable}

-- Function 'Init'
function o3d_partor01:Init()

	PrintDebug("o3d_partor01 ...")
	
	self.enable = FALSE
	
end

-- Function 'Update'
function o3d_partor01:Update()

end

-- Function 'End'
function o3d_partor01:End()
	
end

-- Function 'Notify'
function o3d_partor01:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		if self.enable == TRUE then
			ShowEntity("o3d_partor02")
			StartEntityAnim("o3d_partor02", "partor02", -1, -1, 1)
			startSFX("fx_o3d_partor02")
		
			stopSFX("fx_o3d_partor01")
			HideEntity("CURRENT")
			self.enable = FALSE
		end
		
	end

end

-- Function 'Clock'
function o3d_partor01:Clock(id)

end
