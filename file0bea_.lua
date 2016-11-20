t_loco_clown={ok}

-- Function 'Init'
function t_loco_clown:Init()

	PrintDebug("t_loco_clown ...")
	
	self.ok = FALSE
		
end

-- Function 'Update'
function t_loco_clown:Update()

	if IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
	
		AutoriseWrongWay(FALSE)
		AfficheWrongWay(TRUE)
		
		if self.ok == FALSE then
				
			PrintDebug("t_loco_clown lance Anim clown")
			StartEntityAnim("o3d_clown", "clown", -1, 1, CLOWN_ANIM_RATIO)
			
			GetLuaObject("t_loco_box").enable = TRUE
			
			JoueSon3D("TrainMOV", "t_loco_box", TRUE, -1)
			
			self.ok = TRUE
		end
	end
end

-- Function 'End'
function t_loco_clown:End()

end
