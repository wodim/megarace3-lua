o3d_partor_col01={life, state, jumperName, jumperSpl, partName1, partName2, partName3, partName4, partName5, colEnable}

-- Function 'Init'
function o3d_partor_col01:Init()

	PrintDebug("o3d_partor_col01 ...")
	
	self.life	= PART_LIFE1
	self.state	= 0
	self.jumperName	= "jumper_partor01"
	self.jumperSpl	= "partor01.spl"
	self.partName1	= "o3d_partor05"
	self.partName2	= "o3d_partor06"
	self.partName3	= "o3d_partor07"
	self.partName4	= "o3d_partor08"
	self.partName5	= "o3d_partor09"
	self.colEnable	= TRUE
	
	EnableCollisionDetection("CURRENT", TRUE)
	MakeSameColliAsTrack("CURRENT")
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
	
	NotifyToEntiy("CURRENT", TE_ADD_MAXLIFE, 10000)
	NotifyToEntiy("CURRENT", TE_ADD_DAMAGE_MISSILE_FACTOR, 0)
	
	SetEntityDamage("CURRENT", PART_COL_LIFE)
	
	CreateEventJumper(self.jumperName, "t_partor", self.jumperSpl, (TIME_INIT*PART_ANIM_CORRECT) * 1000, 1, 0.8, 24, 8, 1000, 1600)
	JumperInsertEntity(self.jumperName, "CURRENT")
		
	HideEntity("CURRENT")
	
	-- Init Particules
	
	LoadEntityAnim(self.partName1, "partor")
	LoadEntityAnim(self.partName2, "partor01")
	LoadEntityAnim(self.partName3, "partor02")
	LoadEntityAnim(self.partName4, "partor03")
	LoadEntityAnim(self.partName5, "partor04")
	
	local fxName
	fxName = "fx_" .. self.partName1
	loadSFX(self.partName1, fxName, "sfx_L5partor")
	fxName = "fx_" .. self.partName2
	loadSFX(self.partName2, fxName, "sfx_L5partor")
	fxName = "fx_" .. self.partName3
	loadSFX(self.partName3, fxName, "sfx_L5partor")
	fxName = "fx_" .. self.partName4
	loadSFX(self.partName4, fxName, "sfx_L5partor")
	fxName = "fx_" .. self.partName5
	loadSFX(self.partName5, fxName, "sfx_L5partor")
	
	StartEntityAnim(self.partName1, "partor", -1, -1, 1)
	startSFX("fx_" .. self.partName1)
	
	HideEntity(self.partName2)
	HideEntity(self.partName3)
	HideEntity(self.partName4)
	HideEntity(self.partName5)
	
	JoueSon3D("PartMOV", "CURRENT", TRUE, -1)
	
end

-- Function 'Update'
function o3d_partor_col01:Update()

	ParticuleUpdate("CURRENT")

end

-- Function 'End'
function o3d_partor_col01:End()
	
	if self.state ~= 3 then
		StoppeSon("PartMOV", "CURRENT")
	end
	
	--StopEvent(self.jumperName)
	DeleteEvent(self.jumperName)
	
end

-- Function 'Notify'
function o3d_partor_col01:Notify(event)

	if event == TM_ENTITY_COLLISION_MISSILE then
	
		self.life = self.life - PART_MIS_LOST_LIFE
		ParticuleHit("CURRENT")
		
	end
	
	if event == TM_ENTITY_DEAD then
	
		PrintDebug("Bouyou bouyou !")
		
	end
	
	if event == TM_ENTITY_COLLISION and self.colEnable == TRUE and HitEntity("CURRENT") == "Player1" then
	
		--NotifyToEntiy("CURRENT", TE_ADD_LIFE, PART_COL_LOST_LIFE)
		self.life = self.life - PART_COL_LOST_LIFE
		ParticuleHit("CURRENT")
		self.colEnable = FALSE
		
	end

end

-- Function 'Clock'
function o3d_partor_col01:Clock(id)

	if id == 0 then
	
		self.colEnable = TRUE
		
	end

end
