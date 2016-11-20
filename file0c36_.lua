o3d_partor08={enable}

-- Function 'Init'
function o3d_partor08:Init()

	PrintDebug("o3d_partor08 ...")
	
	self.enable = FALSE
	
end

-- Function 'Update'
function o3d_partor08:Update()

end

-- Function 'End'
function o3d_partor08:End()
	
end

-- Function 'Notify'
function o3d_partor08:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		if self.enable == TRUE then
			ShowEntity("o3d_partor09")
			StartEntityAnim("o3d_partor09", "partor04", -1, -1, 1)
			startSFX("fx_o3d_partor09")
		
			stopSFX("fx_o3d_partor08")		
			HideEntity("CURRENT")
			self.enable = FALSE
		end
		
	end

end

-- Function 'Clock'
function o3d_partor08:Clock(id)

end
