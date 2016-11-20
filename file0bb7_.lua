t_acid02={cam_in}

function t_acid02:Init()

	self.cam_in = FALSE

end

function t_acid02:Update()

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

function t_acid02:End()

end
