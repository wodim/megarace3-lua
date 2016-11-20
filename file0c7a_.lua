t_acid04={cam_in, first_time}

function t_acid04:Init()

	self.cam_in = FALSE
	self.first_time = TRUE


end

function t_acid04:Update()


	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
		if self.first_time == TRUE then
			self.first_time = FALSE
		else
			self.first_time = TRUE
		end
		self.cam_in = FALSE
		if GetLuaObject("t_acid03").first_time == FALSE then
			stopSFX("fx_water_pod")
		end

	end			



end

function t_acid04:End()

end
