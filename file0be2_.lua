o3d_tank02={begin_dispa, ok}

-- Function 'Init'
function o3d_tank02:Init()

	PrintDebug("o3d_tank02 ...")
	
	self.begin_dispa = FALSE
	self.ok = FALSE

	LoadEntityAnim("CURRENT", "tank02")
	
	loadSFX("CURRENT", "fx_dispa_tank", "sfx_L6tank")

end

-- Function 'Update'
function o3d_tank02:Update()

	if IsEntityLeaveTrigger("Player1", "t_tank02") == 1 then
		PrintDebug("Leave t_tank02 ...")
		
		if DistanceEntityToEntity("Player1", "t_loco_clown") > DistanceEntityToEntity("t_tank02", "t_loco_clown") then
			AutoriseWrongWay(FALSE)
			AfficheWrongWay(TRUE)
		else
			AutoriseWrongWay(TRUE)
			AfficheWrongWay(FALSE)
			
			if self.ok == FALSE then

				StartEntityAnim("CURRENT", "tank02", -1, 1, TK_ANIM_RATIO)
				GetLuaObject("t_tank_box02").enable = TRUE
				
				JoueSon3D("TankMOVE", "t_tank_box02", TRUE, -1)
				
				StartClock("CURRENT", 1 / TK_ANIM_RATIO, 0)
		
				self.ok = TRUE
			end
		end
	end

	if SelectEntityEnterInTrigger("t_tank02_02", "ALL_PODS", "") == 1 then
				
		PrintDebug("Enter t_tank02_02 ...")
		
		if self.begin_dispa == FALSE then
		
			startSFX("fx_dispa_tank")
			self.begin_dispa = TRUE
			StartClock("CURRENT", TK_FX_DUR - 1, 1)
		end
		
	end

end

-- Function 'End'
function o3d_tank02:End()

end

-- Function 'Notify'
function o3d_tank02:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		HideEntity("CURRENT")
		GetLuaObject("t_tank_box02").enable = FALSE
		
		if GetLuaObject("t_tank_box02").already_col == TRUE then
						
			RestoreTemporarySpeed("Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip("Player1")
			
		end
		
		StoppeSon("TankMOVE", "t_tank_box02")
		
		stopSFX("fx_dispa_tank")
				
	end
	
end

-- Function 'Clock'
function o3d_tank02:Clock(id)

	if id == 0 then
		if self.begin_dispa == FALSE then
			startSFX("fx_dispa_tank")
			self.begin_dispa = TRUE
			StartClock("CURRENT", TK_FX_DUR - 1, 1)
		end
	end
	
	if id == 1 then
	
		if GetLuaObject("t_tank_box02").enable == TRUE then
		
			GetLuaObject("t_tank_box02").enable = FALSE
			
		end
	end

end
