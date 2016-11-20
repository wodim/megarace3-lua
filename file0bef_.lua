t_robbie={}


-- Function 'Init'
function t_robbie:Init()
	
	PrintDebug("t_robbie ...")

end

-- Function 'Update'
function t_robbie:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_robbie ...")
		
		StartEntityAnim("O3D_A_P2_robbi","robbi_full",-1,-1,1) 
		
	end

end

-- Function 'End'
function t_robbie:End()

end