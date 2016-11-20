o3d_tank01={}

-- Function 'Init'
function o3d_tank01:Init()

 	PrintDebug("o3d_tank01 ...")
 	EnableCollisionDetection("CURRENT", TRUE)
	SetEntityDamage("CURRENT", TK_LIFE_LOST)

end

-- Function 'Update'
function o3d_tank01:Update()

	if (SelectEntityEnterInTrigger( "t_tank01", "ALL_PODS", "" ) == 1) then
				
		PrintDebug("Enter t_tank01 ...")
 	
 		EnableCollisionDetection("CURRENT", TRUE)
		
	end

end

-- Function 'End'
function o3d_tank01:End()

end
