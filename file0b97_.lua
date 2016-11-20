T_insex_descente={ok, enable}

function T_insex_descente:Init()
		
	loadSFX("o3d_impact_desc", "fx_desc", "sfx_impact")
	loadSFX("o3d_impact_desc01", "fx_desc1", "sfx_impact")
	loadSFX("o3d_impact_desc02", "fx_desc2", "sfx_impact")
	loadSFX("o3d_impact_desc03", "fx_desc3", "sfx_impact")
	loadSFX("o3d_impact_desc04", "fx_desc4", "sfx_impact")
	loadSFX("o3d_impact_desc05", "fx_desc5", "sfx_impact")
	
	HideEntity("o3d_impact_desc")
	HideEntity("o3d_impact_desc01")
	HideEntity("o3d_impact_desc02")
	HideEntity("o3d_impact_desc03")
	HideEntity("o3d_impact_desc04")
	HideEntity("o3d_impact_desc05")
			
	LoadEntityAnim("o3d_insext07","INSEX_descente")
	JoueSon3DOnAtomic("Araign2", "o3d_insext07", "QuadPatch46", TRUE, -1)
	LoadEntityAnim("o3d_insext08","INSEX_descente")
	JoueSon3DOnAtomic("Araign2", "o3d_insext08", "QuadPatch46", TRUE, -1)
	LoadEntityAnim("o3d_insext09","INSEX_descente")
	JoueSon3DOnAtomic("Araign2", "o3d_insext09", "QuadPatch46", TRUE, -1)
	LoadEntityAnim("o3d_insext10","INSEX_descente")
	JoueSon3DOnAtomic("Araign2", "o3d_insext10", "QuadPatch46", TRUE, -1)
	LoadEntityAnim("o3d_insext11","INSEX_descente")
	JoueSon3DOnAtomic("Araign2", "o3d_insext11", "QuadPatch46", TRUE, -1)
	LoadEntityAnim("o3d_insext12","INSEX_descente")
	JoueSon3DOnAtomic("Araign2", "o3d_insext12", "QuadPatch46", TRUE, -1)
	
	self.ok = FALSE
	self.enable = FALSE
end




function T_insex_descente:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then
	
		StartClock("o3d_insext07", 0.8, 0)
		StartClock("o3d_insext10", 0.8, 0)
		StartClock("o3d_insext08", 0.8, 0)
		StartClock("o3d_insext11", 0.8, 0)
		StartClock("o3d_insext09", 0.8, 0)
		StartClock("o3d_insext12", 0.8, 0)

		self.ok = 1
	end
	
	if self.enable == TRUE and IsEntityInTrigger("Player1", "t_impact_desc") == TRUE then
		
		PodVibrator("Player1", I_VIB_PITCH_I, I_VIB_PITCH_F, I_VIB_ROLL_I, I_VIB_ROLL_F, I_VIB_DUR, I_VIB_TYPE)
		
		DiminishSpeed("Player1", I_SPEED_LOST)
		NotifyToEntity("Player1", TE_ADD_LIFE_WITH_SHIELD, I_LIFE_LOST)
		NotifyToEntity("Player1", TE_ADD_ENERGIE, I_NRJ_LOST)
	
		self.enable = FALSE
	
	end



end

function T_insex_descente:End()
	
end


function T_insex_descente:Clock(Id)

	if Id == 0 then
	
		self.enable = FALSE
	
	end
end
