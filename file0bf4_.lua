t_tank_box02={enable, already_coll}

-- Function 'Init'
function t_tank_box02:Init()

	PrintDebug("t_tank_box02 ...")
	
	self.enable = FALSE
	self.already_coll = FALSE
	
	SetOptimTestTrigger("CURRENT", FALSE)
	
end

-- Function 'Update'
function t_tank_box02:Update()

	if self.enable == FALSE then
		return
	end
	
	MoveEntity("CURRENT", "o3d_tank02", "base", 0, 0, 0)
	
	if (IsEntityInTrigger("Player1", "CURRENT") == 1) then
	
		if (self.already_coll == FALSE) then
		
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, -TK_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, -TK_NRJ_LOST)
			DiminishSpeed("Player1", TK_SPEED_LOST)
			
			AddTemporarySpeed("Player1", TK_SPEED_MAX, TRUE)
			AddTemporaryAcceleration("Player1", TK_ACC_MAX, TRUE)
			AddTemporaryGrip("Player1", TK_GRIP_MAX, TRUE)
			
			JoueSon3D("ImpSHIP", "Player1", FALSE, -1)
			
			self.already_coll = TRUE
		
		end
	
	else
		
		if (self.already_coll == TRUE) then
						
			RestoreTemporarySpeed("Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip("Player1")
			
			self.already_coll = FALSE
		end
				
	end
	
end

-- Function 'End'
function t_tank_box02:End()

end
