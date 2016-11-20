pluie={name,tombe,effect}

function pluie:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"pluie")
	LoadEntityAnim(self.name,"pluie_1")
	LoadEntityAnim(self.name,"pluie_2")
	LoadEntityAnim(self.name,"pluie_3")
	LoadEntityAnim(self.name,"pluie_4")
	SetAnimFinishMode(self.name,1)
	self.tombe = 0
	self.effect = 0
end

function pluie:Update()

	if (GetLuaObject("t_pluie_on").pass == 1 and self.tombe ==0) then 
		local tmp = random() * 1.5
		StartClock(self.name, tmp,0)
		self.tombe = 1 
	end


	if (IsEntityInAtomic ("Player1","QuadPatch05","CURRENT") == 1) then
		setShake(1,0.2)
		if self.effect == 0 then
			NotifyToEntiy("Player1",TE_ADD_LIFE_WITH_SHIELD, -50)	
			DiminishSpeed( "Player1", 0.5)
			AddTemporarySpeed( "Player1", -0.6, 1)
			AddTemporaryAcceleration( "Player1", -0.9, 1)
			AddTemporaryGrip( "Player1", -0.5, 1);
			self.effect = 1
		end
	end


end

function pluie:End()
end

function pluie:Clock(Id)
	
	if Id == 0 then
		StartEntityAnim(self.name,"pluie",-1,1,1)
		StartClock("CURRENT", random(), 5) 
		--JoueSon3D("PluiEau3", "CURRENT", FALSE, -1)
	elseif Id == 1 then
		StartEntityAnim(self.name,"pluie_1",-1,1,1)
		StartClock("CURRENT", random(), 6) 
		--JoueSon3D("PluiEau2", "CURRENT", FALSE, -1)
	elseif Id == 2 then
		StartEntityAnim(self.name,"pluie_2",-1,1,1)
		StartClock("CURRENT", random(), 7) 
		--JoueSon3D("PluiEau1", "CURRENT", FALSE, -1)
	elseif Id == 3 then
		StartEntityAnim(self.name,"pluie_3",-1,1,1)
		StartClock("CURRENT", random(), 5) 
		--JoueSon3D("PluiEau3", "CURRENT", FALSE, -1)
	elseif Id == 4 then
		StartEntityAnim(self.name,"pluie_4",-1,1,1)
		StartClock("CURRENT", random(), 6) 
		--JoueSon3D("PluiEau2", "CURRENT", FALSE, -1)
	elseif Id == 5 then
		JoueSon3D("PluiEau1", "CURRENT", FALSE, -1)
	elseif Id == 6 then
		JoueSon3D("PluiEau2", "CURRENT", FALSE, -1)
	else
		JoueSon3D("PluiEau3", "CURRENT", FALSE, -1)
	end
		

end

function pluie:Notify(Event)

	if (Event == TM_ENTITY_ANIM_FINISH and GetLuaObject("t_pluie_off").pass == 0) then
		local tmp = random(5) - 1
		StartClock(self.name, 0.01,tmp)
		if self.effect == 1 then
			RestoreTemporarySpeed( "Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip( "Player1")
			self.effect = 0
		end
	end


end









