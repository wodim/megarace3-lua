t_small01={}


-- Function 'Init'
function t_small01:Init()
	
	PrintDebug("t_small01 ...")
			
end


-- Function 'Update'
function t_small01:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_small01 ...")
		
		SolActive("O3D_A_P2_smallsoldier01")
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_small01 ...")

	end

end



-- Function 'End'
function t_small01:End()

end
