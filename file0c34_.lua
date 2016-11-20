o3d_partor03={enable}

-- Function 'Init'
function o3d_partor03:Init()

	PrintDebug("o3d_partor03 ...")
	
	self.enable = FALSE
	
end

-- Function 'Update'
function o3d_partor03:Update()

end

-- Function 'End'
function o3d_partor03:End()
	
end

-- Function 'Notify'
function o3d_partor03:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		if self.enable == TRUE then
			ShowEntity("o3d_partor04")
			StartEntityAnim("o3d_partor04", "partor04", -1, -1, 1)
			startSFX("fx_o3d_partor04")
		
			stopSFX("fx_o3d_partor03")		
			HideEntity("CURRENT")
			self.enable = FALSE
		end
		
	end

end

-- Function 'Clock'
function o3d_partor03:Clock(id)

end
