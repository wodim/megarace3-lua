t_end={}

-- Function 'Init'
function t_end:Init()

	PrintDebug("t_end ...")

end

-- Function 'Update'
function t_end:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
				
		PrintDebug("Enter t_end ...")
		
		EndL6Race(TRUE)	
		
	end

end

-- Function 'End'
function t_end:End()

end