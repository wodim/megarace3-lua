t_poupes_on01={}


-- Function 'Init'
function t_poupes_on01:Init()
	
	PrintDebug("t_poupes_on01 ...")

end


-- Function 'Update'
function t_poupes_on01:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_poupes_on01 ...")
 		
 		local time = 0
 		StartClock("o3d_poupe05", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe06", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe07", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe08", time, 0)
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_poupes_on01 ...")

	end

end

-- Function 'End'
function t_poupes_on01:End()

end
