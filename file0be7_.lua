t_gants_on={}


-- Function 'Init'
function t_gants_on:Init()
	
	PrintDebug("t_gants_on ...")

end


-- Function 'Update'
function t_gants_on:Update()

	if SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then 
				
		PrintDebug("Enter t_gants_on ...")
		
		GantEnable("O3D_A_P2_gant", GT_FIRST_TIME_1)
		GantEnable("O3D_A_P2_gant01", GT_FIRST_TIME_2)
		GantEnable("O3D_A_P2_gant02", GT_FIRST_TIME_3)
		GantEnable("O3D_A_P2_gant03", GT_FIRST_TIME_4)
		GantEnable("O3D_A_P2_gant04", GT_FIRST_TIME_5)
		GantEnable("O3D_A_P2_gant05", GT_FIRST_TIME_6)
		GantEnable("O3D_A_P2_gant06", GT_FIRST_TIME_7)
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_gants_on ...")

	end

end



-- Function 'End'
function t_gants_on:End()

end
