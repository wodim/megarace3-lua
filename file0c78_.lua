t_acid02={cam_in, first_time}

function t_acid02:Init()

	self.cam_in = TRUE
	self.first_time = FALSE
	
	loadSFX("Player1", "fx_water_pod", "sfx_splash")

end

function t_acid02:Update()


	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
		if self.first_time == TRUE then
			self.first_time = FALSE
		else
			self.first_time = TRUE
		end
		self.cam_in = FALSE
		if GetLuaObject("t_acid01").first_time == FALSE then
			stopSFX("fx_water_pod")
		end

	end			



end

function t_acid02:End()

end
