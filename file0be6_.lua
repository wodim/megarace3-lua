t_gants_off01={}


-- Function 'Init'
function t_gants_off01:Init()
	
	PrintDebug("t_gants_off01 ...")

end


-- Function 'Update'
function t_gants_off01:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_gants_off01 ...")
		
		GantDisable("O3D_A_P2_gant07")
		GantDisable("O3D_A_P2_gant08")
		GantDisable("O3D_A_P2_gant09")
		GantDisable("O3D_A_P2_gant10")
		GantDisable("O3D_A_P2_gant11")
		GantDisable("O3D_A_P2_gant12")
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_gants_off01 ...")

	end

end



-- Function 'End'
function t_gants_off01:End()

end
