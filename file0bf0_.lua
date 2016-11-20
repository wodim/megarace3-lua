t_small={}


-- Function 'Init'
function t_small:Init()
	
	PrintDebug("t_small ...")
	
	CreateEventPichnette("small_pichnette", "CURRENT", 0, -1, 0, SOL_SHOOT_G)
	PichnetteInsertEntity("small_pichnette", "o3d_small_proj", 0, -1, 0, SOL1_SHOOT_F, "O3D_A_P2_smallsoldier", "emitter_small", 10000, SOL1_SHOOT_A_VAR, SOL1_SHOOT_F_VAR)
	PichnetteInsertEntity("small_pichnette", "o3d_small_proj01", 0, -1, 0, SOL2_SHOOT_F, "O3D_A_P2_smallsoldier01", "emitter_small", 10000, SOL2_SHOOT_A_VAR, SOL2_SHOOT_F_VAR)
	PichnetteInsertEntity("small_pichnette", "o3d_small_proj02", 0, -1, 0, SOL3_SHOOT_F, "O3D_A_P2_smallsoldier02", "emitter_small", 10000, SOL3_SHOOT_A_VAR, SOL3_SHOOT_F_VAR)
	PichnetteStop("small_pichnette", "o3d_small_proj")
	PichnetteStop("small_pichnette", "o3d_small_proj01")
	PichnetteStop("small_pichnette", "o3d_small_proj02")
			
end


-- Function 'Update'
function t_small:Update()

	PichnetteUpdate("small_pichnette")

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then 
				
		PrintDebug("Enter t_small ...")
		
		SolActive("O3D_A_P2_smallsoldier")
		
	end

	if SelectEntityLeaveTrigger( "CURRENT", "ALL_PODS", "" ) == 1 then
		
		PrintDebug("Leave t_small ...")

	end

end


-- Function 'End'
function t_small:End()

	StopEvent("small_pichnette")

	PichnetteRemoveEntity("small_pichnette", "o3d_small_proj")
	PichnetteRemoveEntity("small_pichnette", "o3d_small_proj01")
	PichnetteRemoveEntity("small_pichnette", "o3d_small_proj02")

	DeleteEvent("small_pichnette")

end
