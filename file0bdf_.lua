O3D_A_P2_smallsoldier02={projName, impactName, fx_bille, fx_impact, enable, find_coll, pod_coll, time, dur}

-- Function 'Init'
function O3D_A_P2_smallsoldier02:Init()

	PrintDebug("O3D_A_P2_smallsoldier02 ...")
	
	self.projName = "o3d_small_proj02"
	self.impactName = "o3d_small_impact02"
	self.trigImpact = "t_small_impact02"
	self.fx_bille = "fx_bille02"
	self.fx_impact = "fx_impact02"
	self.enable = FALSE
	self.find_coll = FALSE
	self.pod_coll = FALSE
	self.time = SOL_TIME3
	self.dur = SOL_DUR3

	LoadEntityAnim("CURRENT", "small_01")
	LoadEntityAnim("CURRENT", "small_02")
		
	
	-- Init projectile
		
	EnableCollisionDetection(self.projName, TRUE)
	loadSFX(self.projName, self.fx_bille, "sfx_bille")
	--MakeSameColliAsTrack(self.projName)
	HideEntity(self.projName)
	
	
	-- Init point d'impacte track	
	
	loadSFX(self.impactName, self.fx_impact, "sfx_impact")
	HideEntity(self.impactName)
	
end

-- Function 'Update'
function O3D_A_P2_smallsoldier02:Update()

	if self.enable == TRUE and self.find_coll == FALSE and self.pod_coll == TRUE then

		if IsEntityInTrigger("Player1", self.trigImpact) == 1 then
			SolImpactPod("CURRENT")
		end
		
	end

end

-- Function 'End'
function O3D_A_P2_smallsoldier02:End()

end

-- Function 'Notify'
function O3D_A_P2_smallsoldier02:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		StartClock("CURRENT", SOL_SHOOT_T, 0)
	end
	
end

-- Function 'Clock'
function O3D_A_P2_smallsoldier02:Clock(Id)

	if Id == 0 then
	
		if self.enable == TRUE then
			SolSendMissile("CURRENT")
		end
		
	elseif Id == 1 then
	
		SolImpactMissile("CURRENT")
		
	elseif Id == 2 then
	
		self.pod_coll = FALSE
		self.find_coll = FALSE
		
	end
	
end
