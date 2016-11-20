t_pos1={}

-- Function 'Init'
function t_pos1:Init()

	PrintDebug("t_pos1 ...")
	SetOptimTestTrigger("CURRENT", FALSE)

end

-- Function 'Update'
function t_pos1:Update()

	if (playerState == 3 or playerState == 0) and IsEntityLeaveTrigger("Player1", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos2", "t_pos1") > DistanceEntityToEntity("t_pos2", "Player1") then
			--PrintDebug("Player enter t_pos1 -> 2")
			playerState = 0
		else
			--PrintDebug("Player enter t_pos1 -> 4")
			playerState = 3
		end
	end

	if (p1State == 3 or p1State == 0) and IsEntityLeaveTrigger("o3d_partor_col", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos2", "t_pos1") > DistanceEntityToEntity("t_pos2", "o3d_partor_col") then
			--PrintDebug("P1 enter t_pos1 -> 2")
			p1State = 0
		else
			--PrintDebug("P1 enter t_pos1 -> 4")
			p1State = 3
		end
	end

	if (p2State == 3 or p2State == 0) and IsEntityLeaveTrigger("o3d_partor_col01", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos2", "t_pos1") > DistanceEntityToEntity("t_pos2", "o3d_partor_col01") then
			--PrintDebug("P2 enter t_pos1 -> 2")
			p2State = 0
		else
			--PrintDebug("P2 enter t_pos1 -> 4")
			p2State = 3
		end
	end

end

-- Function 'End'
function t_pos1:End()

end
