t_poupes_on={}


-- Function 'Init'
function t_poupes_on:Init()
	
	PrintDebug("t_poupes_on ...")

end


-- Function 'Update'
function t_poupes_on:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_poupes_on ...")
		
		local time = 0	 		
 		StartClock("o3d_poupe", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe01", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe02", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe03", time, 0)
 		
 		time = time + PR_ANIM_TIME
 		StartClock("o3d_poupe04", time, 0)
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_poupes_on ...")

	end

end


-- Function 'End'
function t_poupes_on:End()

end
