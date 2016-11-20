o3d_insext05={module1SFX, enable, trig, impact, fx_impact}

function o3d_insext05:Init()
	self.module1SFX = GetEntityName() .. "insext"
	loadSFX( "CURRENT", self.module1SFX, "sfx_insext" )
	startSFX( self.module1SFX )
	
	self.enable = FALSE
	self.trig = "t_impact_insext05"
	self.impact = "o3d_impact_insext05"
	self.fx_impact = "fx_impact2"
	
	HideEntity(self.impact)
	loadSFX(self.impact, self.fx_impact, "sfx_insexp")
end


function o3d_insext05:Update()

	if self.enable == TRUE and IsEntityInTrigger("Player1", self.trig) == TRUE then
		
		PodVibrator("Player1", I_VIB_PITCH_I, I_VIB_PITCH_F, I_VIB_ROLL_I, I_VIB_ROLL_F, I_VIB_DUR, I_VIB_TYPE)
		
		DiminishSpeed("Player1", I_SPEED_LOST)
		NotifyToEntity("Player1", TE_ADD_LIFE_WITH_SHIELD, I_LIFE_LOST)
		NotifyToEntity("Player1", TE_ADD_ENERGIE, I_NRJ_LOST)
	
		self.enable = FALSE
	
	end

end


function o3d_insext05:End()

end


function o3d_insext05:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		startSFX(self.fx_impact)
		HideEntity("CURRENT")
		
		self.enable = TRUE
		
		StartClock("CURRENT", I_IMPACT_DUR, 0)
		
	end
end


function o3d_insext05:Clock(id)
	if id == 0 then
		self.enable = FALSE
	end
end