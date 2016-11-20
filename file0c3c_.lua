t_pos4={}

-- Function 'Init'
function t_pos4:Init()

	PrintDebug("t_pos4 ...")
	SetOptimTestTrigger("CURRENT", FALSE)

end

-- Function 'Update'
function t_pos4:Update()

	if (playerState == 2 or playerState == 3) and IsEntityLeaveTrigger("Player1", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos3", "t_pos4") > DistanceEntityToEntity("t_pos3", "Player1") then
			--PrintDebug("Player enter t_pos4 -> 3")
			playerState = 2
		else
			--PrintDebug("Player enter t_pos4 -> 1")
			playerState = 3
		end
	end

	if (p1State == 2 or p1State == 3) and IsEntityLeaveTrigger("o3d_partor_col", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos3", "t_pos4") > DistanceEntityToEntity("t_pos3", "o3d_partor_col") then
			--PrintDebug("P1 enter t_pos4 -> 3")
			p1State = 2
		else
			--PrintDebug("P1 enter t_pos4 -> 1")
			p1State = 3
		end
	end

	if (p2State == 2 or p2State == 3) and IsEntityLeaveTrigger("o3d_partor_col01", "CURRENT") == TRUE then

		if DistanceEntityToEntity("t_pos3", "t_pos4") > DistanceEntityToEntity("t_pos3", "o3d_partor_col01") then
			--PrintDebug("P2 enter t_pos4 -> 3")
			p2State = 2
		else
			--PrintDebug("P2 enter t_pos4 -> 1")
			p2State = 3
		end
	end

end

-- Function 'End'
function t_pos4:End()

end
