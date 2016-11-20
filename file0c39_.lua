t_pos3={}

-- Function 'Init'
function t_pos3:Init()

	PrintDebug("t_pos3 ...")
	SetOptimTestTrigger("CURRENT", FALSE)

end

-- Function 'Update'
function t_pos3:Update()

	if (playerState == 1 or playerState == 2) and IsEntityLeaveTrigger("Player1", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos4", "t_pos3") > DistanceEntityToEntity("t_pos4", "Player1") then
			--PrintDebug("Player enter t_pos3 -> 4")
			playerState = 2
		else
			--PrintDebug("Player enter t_pos3 -> 2")
			playerState = 1
		end
	end

	if (p1State == 1 or p1State == 2) and IsEntityLeaveTrigger("o3d_partor_col", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos4", "t_pos3") > DistanceEntityToEntity("t_pos4", "o3d_partor_col") then
			--PrintDebug("P1 enter t_pos3 -> 4")
			p1State = 2
		else
			--PrintDebug("P1 enter t_pos3 -> 2")
			p1State = 1
		end
	end
	
	if (p2State == 1 or p2State == 2) and IsEntityLeaveTrigger("o3d_partor_col01", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos4", "t_pos3") > DistanceEntityToEntity("t_pos4", "o3d_partor_col01") then
			--PrintDebug("P2 enter t_pos3 -> 4")
			p2State = 2
		else
			--PrintDebug("P2 enter t_pos3 -> 2")
			p2State = 1
		end
	end

end

-- Function 'End'
function t_pos3:End()

end
