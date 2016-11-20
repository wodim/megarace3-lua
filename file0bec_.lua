t_poupes_off01={}


-- Function 'Init'
function t_poupes_off01:Init()
	
	PrintDebug("t_poupes_off01 ...")

end


-- Function 'Update'
function t_poupes_off01:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_poupes_off01 ...")
	
		EnableCollisionDetection("o3d_poupe05", FALSE)
		EnableCollisionDetection("o3d_poupe06", FALSE)
		EnableCollisionDetection("o3d_poupe07", FALSE)
		EnableCollisionDetection("o3d_poupe08", FALSE)
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_poupes_off01 ...")

	end

end



-- Function 'End'
function t_poupes_off01:End()

end
