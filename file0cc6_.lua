bulle_g={name,tombe,effect,sfxn}

function bulle_g:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"bulle_g")
	SetAnimFinishMode(self.name,1)
	self.tombe = 0
	self.effect = 0
	self.sfxn = self.name.."fxbulle"
	loadSFX(self.name,self.sfxn,"sfx_L1bulle")
	self.tombe = 0
	self.effect = 0
end

function bulle_g:Update()

	if (GetLuaObject("t_bulle_on").pass == 1 and self.tombe ==0) then 
		local tmp = random()
		StartClock(self.name, tmp,0)
		self.tombe = 1 
	end


	if (IsEntityInAtomic ("Player1","bulle02","CURRENT") == 1) then
		setShake(1,0.2)
		if Effect == 0 then
			NotifyToEntiy("Player1",TE_ADD_LIFE_WITH_SHIELD, -50)	
			DiminishSpeed( "Player1", 0.5)
			AddTemporarySpeed( "Player1", -0.6, 1)
			AddTemporaryAcceleration( "Player1", -0.9, 1)
			AddTemporaryGrip( "Player1", -0.5, 1);
			Effect = 1
			StartClock(self.name, 2,1)
		end
	end


end

function bulle_g:End()
end

function bulle_g:Clock(Id)
	
	if Id == 0 then
		StartEntityAnim(self.name,"bulle_g",-1,1,1)
		startSFX(self.sfxn)
	end


	if Id == 1 then
		RestoreTemporarySpeed( "Player1")
		RestoreTemporaryAcceleration("Player1")
		RestoreTemporaryGrip( "Player1")
		Effect = 0
	end

end

function bulle_g:Notify(Event)

	if (Event == TM_ENTITY_ANIM_FINISH and GetLuaObject("t_bulle_off").pass == 0) then
		local tmp = random()
		stopSFX(self.sfxn)
		StartClock(self.name, tmp,0)
	end


end









