t_gants_off={}


-- Function 'Init'
function t_gants_off:Init()
	
	PrintDebug("t_gants_off ...")

end


-- Function 'Update'
function t_gants_off:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_gants_off ...")
		
		GantDisable("O3D_A_P2_gant")
		GantDisable("O3D_A_P2_gant01")
		GantDisable("O3D_A_P2_gant02")
		GantDisable("O3D_A_P2_gant03")
		GantDisable("O3D_A_P2_gant04")
		GantDisable("O3D_A_P2_gant05")
		GantDisable("O3D_A_P2_gant06")
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_gants_off ...")

	end

end



-- Function 'End'
function t_gants_off:End()

end
