o3d_partor06={enable}

-- Function 'Init'
function o3d_partor06:Init()

	PrintDebug("o3d_partor06 ...")
	
	self.enable = FALSE
	
end

-- Function 'Update'
function o3d_partor06:Update()

end

-- Function 'End'
function o3d_partor06:End()
	
end

-- Function 'Notify'
function o3d_partor06:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		if self.enable == TRUE then
			ShowEntity("o3d_partor07")
			StartEntityAnim("o3d_partor07", "partor02", -1, -1, 1)
			startSFX("fx_o3d_partor07")
		
			stopSFX("fx_o3d_partor06")		
			HideEntity("CURRENT")
			self.enable = FALSE
		end
		
	end

end

-- Function 'Clock'
function o3d_partor06:Clock(id)

end
