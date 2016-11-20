t_pos2={}

-- Function 'Init'
function t_pos2:Init()

	PrintDebug("t_pos2 ...")
	SetOptimTestTrigger("CURRENT", FALSE)

end

-- Function 'Update'
function t_pos2:Update()

	if (playerState == 0 or playerState == 1) and IsEntityLeaveTrigger("Player1", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos1", "t_pos2") > DistanceEntityToEntity("t_pos1", "Player1") then
			--PrintDebug("Player enter t_pos2 -> 1")
			playerState = 0
		else
			--PrintDebug("Player enter t_pos2 -> 3")
			playerState = 1
		end
	end

	if (p1State == 0 or p1State == 1) and IsEntityLeaveTrigger("o3d_partor_col", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos1", "t_pos2") > DistanceEntityToEntity("t_pos1", "o3d_partor_col") then
			--PrintDebug("P1 enter t_pos2 -> 1")
			p1State = 0
		else
			--PrintDebug("P1 enter t_pos2 -> 3")
			p1State = 1
		end
	end

	if (p2State == 0 or p2State == 1) and IsEntityLeaveTrigger("o3d_partor_col01", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos1", "t_pos2") > DistanceEntityToEntity("t_pos1", "o3d_partor_col01") then
			--PrintDebug("P1 enter t_pos2 -> 1")
			p2State = 0
		else
			--PrintDebug("P1 enter t_pos2 -> 3")
			p2State = 1
		end
	end

end

-- Function 'End'
function t_pos2:End()

end
