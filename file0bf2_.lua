t_small02={}


-- Function 'Init'
function t_small02:Init()
	
	PrintDebug("t_small02 ...")
			
end


-- Function 'Update'
function t_small02:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_small02 ...")
		
		SolActive("O3D_A_P2_smallsoldier02")
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_small02 ...")

	end

end



-- Function 'End'
function t_small02:End()

end
