t_small03={}


-- Function 'Init'
function t_small03:Init()
	
	PrintDebug("t_small03 ...")
			
end


-- Function 'Update'
function t_small03:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_small03 ...")
		
		SolDesactive("O3D_A_P2_smallsoldier")
		SolDesactive("O3D_A_P2_smallsoldier01")
		SolDesactive("O3D_A_P2_smallsoldier02")
				
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_small03 ...")

	end

end



-- Function 'End'
function t_small03:End()

end
