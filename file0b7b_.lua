o3d_dummy={enable, already_coll, first_hit, pause, back, hit, end_hit, dead, state}


function o3d_dummy:Init()

	PrintDebug("Load o3d_dummy")

	self.enable = FALSE
	self.already_coll = FALSE
	self.first_hit = TRUE
	self.pause = FALSE
	self.back = FALSE
	self.hit = FALSE
	self.end_hit = FALSE
	self.dead = FALSE
	self.state = Q_STATE_START

	LoadEntityAnim("CURRENT", "dummy360")
	
	StartEntityAnim("CURRENT", "dummy360", -1, -1, Q_ANIM_DUMMY_RATE)
	PauseEntityAnim("CURRENT")
	
	HideEntity("CURRENT")

end

function o3d_dummy:Update()

	if self.enable == FALSE then
		return
	end
	
	PosQueen()
	FallingObjectsUpdate("queen_mines")
		
	if (IsEntityInTrigger("Player1", "t_queen_box") == 1) then
	
		if (self.already_coll == FALSE) then
		
			NotifyToEntity("Player1", TE_ADD_LIFE_WITH_SHIELD, Q_COL_LIFE_TRIG)
			DiminishSpeed("Player1", Q_SPEED_LOST)
			AddTemporarySpeed("Player1", Q_SPEED_MAX, TRUE)
			AddTemporaryAcceleration("Player1", Q_ACC_MAX, TRUE)
			AddTemporaryGrip("Player1", Q_GRIP_MAX, TRUE)
			
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


function o3d_dummy:End()

end

function o3d_dummy:Clock(Id)

	if Id == 0 then
	
		GetLuaObject("o3d_dummy").back = FALSE
		GetLuaObject("o3d_dummy").end_hit = TRUE
		
	end

end

function o3d_dummy:Notify(event)
	
end