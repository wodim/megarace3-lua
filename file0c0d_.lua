t_acid03={first_time,cam_in}

function t_acid03:Init()
	self.cam_in = TRUE
	self.first_time = FALSE
end

function t_acid03:Update()





	if IsCameraInTrigger("CURRENT") == TRUE then
		if self.cam_in == FALSE then
			startSFX("camfx_water")			
			self.cam_in = TRUE
		end
		
	elseif self.cam_in == TRUE and GetLuaObject("t_acid04").cam_in == FALSE then
		stopSFX("camfx_water")
		self.cam_in = FALSE
	end
	

	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
		if self.first_time == TRUE then
			self.first_time = FALSE
		end
		GetLuaObject("t_acid04").cam_in = TRUE
		startSFX("fx_water_pod")
	end
		

end

function t_acid03:End()

end
