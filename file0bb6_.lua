t_acid01={cam_in, first_time}

function t_acid01:Init()

	self.cam_in = FALSE
	self.first_time = TRUE
	
	loadSFX("Player1", "fx_water_pod", "sfx_splash")
	loadSFX("Nano", "fx_water_nano", "sfx_splash")

end

function t_acid01:Update()

	if IsCameraInTrigger("CURRENT") == TRUE then
		
		if self.cam_in == FALSE then
			
			startSFX("camfx_water")			
			self.cam_in = TRUE
		end
		
	elseif self.cam_in == TRUE then
	
		stopSFX("camfx_water")
		self.cam_in = FALSE
		
	end
	

	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
	
		--PrintDebug("P1 in acid1")
		if self.first_time == TRUE then
			self.first_time = FALSE
			DisplayMsgCata(267)
		end
			
		startSFX("fx_water_pod")
		
	elseif IsEntityLeaveTrigger("Player1", "CURRENT") == TRUE then
	
		--PrintDebug("P1 not in acid1")
		stopSFX("fx_water_pod")
		
	end

	if IsEntityEnterInTrigger("Nano", "CURRENT") == TRUE then
				
		startSFX("fx_water_nano")
		
	elseif IsEntityLeaveTrigger("Nano", "CURRENT") == TRUE then
		
		stopSFX("fx_water_nano")
		
	end

end

function t_acid01:End()

end
