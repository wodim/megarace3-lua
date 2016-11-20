t_poupes_off={}


-- Function 'Init'
function t_poupes_off:Init()
	
	PrintDebug("t_poupes_off ...")

end


-- Function 'Update'
function t_poupes_off:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_poupes_off ...")
	
		EnableCollisionDetection("o3d_poupe", FALSE)
		EnableCollisionDetection("o3d_poupe01", FALSE)
		EnableCollisionDetection("o3d_poupe02", FALSE)
		EnableCollisionDetection("o3d_poupe03", FALSE)
		EnableCollisionDetection("o3d_poupe04", FALSE)
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_poupes_off ...")

	end

end



-- Function 'End'
function t_poupes_off:End()

end
