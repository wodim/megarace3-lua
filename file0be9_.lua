t_loco_box={enable, already_coll, sound_time}

-- Function 'Init'
function t_loco_box:Init()

	PrintDebug("t_loco_box ...")
	
	self.enable 		= FALSE
	self.already_coll 	= FALSE
	self.sound_time		= FALSE
	
	SetOptimTestTrigger("CURRENT", FALSE)
	
end

-- Function 'Update'
function t_loco_box:Update()

	if self.enable == FALSE then
		return
	end
	
	MoveEntity("CURRENT", "o3d_loco", "O3D_M_P2_train", 0, 0, 0)
	
	if IsEntityInTrigger("Player1", "CURRENT") == 1 then
	--if IsEntityIn("Player1", "CURRENT") == 1 then
	
		if (self.already_coll == TRUE) then
		
			--PrintDebug("Stay in Train")
				
			-- Player déjà dans le train
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, LOCO_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, LOCO_NRJ_LOST)
		
		else
		
			--PrintDebug("Enter Train")
		
			-- Player entre dans le train
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, LOCO_LIFE_LOST_ENTER)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, LOCO_NRJ_LOST_ENTER)
			DiminishSpeed("Player1", LOCO_SPEED_LOST)
			AddTemporarySpeed("Player1", LOCO_SPEED_MAX, TRUE)
			AddTemporaryAcceleration("Player1", LOCO_ACC_MAX, TRUE)
			AddTemporaryGrip("Player1", LOCO_GRIP_MAX, TRUE)
			
			if self.sound_time == FALSE then
				JoueSon3D("TrainIMP", "Player1", TRUE, -1)
				StartClock("CURRENT", TIME_LATENCE, 0)
			else
				self.sound_time = FALSE
			end
			
			self.already_coll = TRUE
		
		end
	
	else
		
		if (self.already_coll == TRUE) then
						
			RestoreTemporarySpeed("Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip("Player1")
			
			if self.sound_time == TRUE then
				StoppeSon("TrainIMP", "Player1")
				self.sound_time = FALSE
			else
				self.sound_time = TRUE
			end
			
			self.already_coll = FALSE
		end
				
	end
	
end

-- Function 'End'
function t_loco_box:End()

end

-- Function 'Clock'
function t_loco_box:Clock(id)

	if id == 0 then
	
		if self.sound_time == TRUE then
			StoppeSon("TrainIMP", "Player1")
			self.sound_time = FALSE
		else
			self.sound_time = TRUE
		end
		
	end

end
