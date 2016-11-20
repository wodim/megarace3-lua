t_acid01={first_time,cam_in}

function t_acid01:Init()
	self.cam_in = FALSE
	self.first_time = TRUE
end

function t_acid01:Update()





	if IsCameraInTrigger("CURRENT") == TRUE then
		if self.cam_in == FALSE then
			startSFX("camfx_water")			
			self.cam_in = TRUE
		end
		
	elseif self.cam_in == TRUE and GetLuaObject("t_acid02").cam_in == FALSE then
		stopSFX("camfx_water")
		self.cam_in = FALSE
	end
	

	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
		if self.first_time == TRUE then
			self.first_time = FALSE
		end
		GetLuaObject("t_acid02").cam_in = TRUE
		startSFX("fx_water_pod")
	end
		














--	if IsCameraInTrigger("CURRENT") == TRUE then
--		if self.cam_in == FALSE then
--			startSFX("camfx_water")			
--			self.cam_in = TRUE
--		end
--	elseif self.cam_in == TRUE then
--	
--		stopSFX("camfx_water")
--		self.cam_in = FALSE
--		
--	end
--	
--
--	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
	
		--PrintDebug("P1 in acid1")			
--		startSFX("fx_water_pod")
		
--	if IsEntityLeaveTrigger("Player1", "CURRENT") == TRUE then
--	
--		--PrintDebug("P1 not in acid1")
--		stopSFX("fx_water_pod")
--		
--	end


end

function t_acid01:End()

end
