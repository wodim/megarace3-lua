o3d_partor_col={life, state, jumperName, jumperSpl, partName1, partName2, partName3, partName4, partName5, colEnable}

-- Function 'Init'
function o3d_partor_col:Init()

	PrintDebug("o3d_partor_col ...")
	
	self.life	= PART_LIFE1
	self.state	= 0
	self.jumperName	= "jumper_partor"
	self.jumperSpl	= "partor.spl"
	self.partName1	= "o3d_partor"
	self.partName2	= "o3d_partor01"
	self.partName3	= "o3d_partor02"
	self.partName4	= "o3d_partor03"
	self.partName5	= "o3d_partor04"
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
	
	loadSFX(self.partName1, "fx_" .. self.partName1, "sfx_L5partor")
	loadSFX(self.partName2, "fx_" .. self.partName2, "sfx_L5partor")
	loadSFX(self.partName3, "fx_" .. self.partName3, "sfx_L5partor")
	loadSFX(self.partName4, "fx_" .. self.partName4, "sfx_L5partor")
	loadSFX(self.partName5, "fx_" .. self.partName5, "sfx_L5partor")
	
	StartEntityAnim(self.partName1, "partor", -1, -1, 1)
	startSFX("fx_" .. self.partName1)
	
	HideEntity(self.partName2)
	HideEntity(self.partName3)
	HideEntity(self.partName4)
	HideEntity(self.partName5)
	
	JoueSon3D("PartMOV", "CURRENT", TRUE, -1)	
	
end

-- Function 'Update'
function o3d_partor_col:Update()

	ParticuleUpdate("CURRENT")

end

-- Function 'End'
function o3d_partor_col:End()
	
	if self.state ~= 3 then
		StoppeSon("PartMOV", "CURRENT")
	end
	
	--StopEvent(self.jumperName)
	DeleteEvent(self.jumperName)
	
end

-- Function 'Notify'
function o3d_partor_col:Notify(event)

	if event == TM_ENTITY_COLLISION_MISSILE then
	
		self.life = self.life - PART_MIS_LOST_LIFE
		ParticuleHit("CURRENT")
		
	end
	
	if event == TM_ENTITY_DEAD then
	
		PrintDebug("Bouyou bouyou !")
		
	end
	
	if event == TM_ENTITY_COLLISION and self.colEnable == TRUE and HitEntity("CURRENT") == "Player1" then
	
		self.life = self.life - PART_COL_LOST_LIFE
		ParticuleHit("CURRENT")
		StartClock("CURRENT", 0.05, 0)
		self.colEnable = FALSE
		
	end

end

-- Function 'Clock'
function o3d_partor_col:Clock(id)

	if id == 0 then
	
		self.colEnable = TRUE
		
	end

end
