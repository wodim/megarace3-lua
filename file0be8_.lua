t_gants_on01={}


-- Function 'Init'
function t_gants_on01:Init()
	
	PrintDebug("t_gants_on01 ...")

end


-- Function 'Update'
function t_gants_on01:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_gants_on01 ...")
		
		GantEnable("O3D_A_P2_gant07", GT_FIRST_TIME_8)
		GantEnable("O3D_A_P2_gant08", GT_FIRST_TIME_9)
		GantEnable("O3D_A_P2_gant09", GT_FIRST_TIME_10)
		GantEnable("O3D_A_P2_gant10", GT_FIRST_TIME_11)
		GantEnable("O3D_A_P2_gant11", GT_FIRST_TIME_12)
		GantEnable("O3D_A_P2_gant12", GT_FIRST_TIME_13)
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_gants_on01 ...")

	end

end



-- Function 'End'
function t_gants_on01:End()

end
