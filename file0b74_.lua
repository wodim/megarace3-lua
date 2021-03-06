gouttes={name,tb,tomb }

function gouttes:Init()

	LoadEntityAnim(GetEntityName(),"gouttes")
	SetAnimFinishMode(GetEntityName(),1);
	self.name = GetEntityName()
	self.tomb = 0
	self.tb = 0
end

function gouttes:Update()

	if (GetLuaObject("t_gb").pass == 1 and self.tomb ==0) then 
		local tmp = random(5,9)
		StartClock(self.name, tmp,0)
		self.tomb = 1 
	end


	if (IsEntityInAtomic ("Player1","QuadPatch05","CURRENT") == 1) then
		setShake(1,0.2)
		if self.tb == 0 then
			NotifyToEntity("Player1", TE_ADD_LIFE_WITH_SHIELD, G_LIFE_LOST)
			DiminishSpeed( "Player1", 0.5)
			AddTemporarySpeed( "Player1", -0.6, 1)
			AddTemporaryAcceleration( "Player1", -0.9, 1)
			AddTemporaryGrip( "Player1", -0.5, 1);
			self.tb = 1
		end
	end

end

function gouttes:End()

end

function gouttes:Clock(Id)

	if Id == 0 then
		StartEntityAnim(self.name,"gouttes",-1,1,1)
	end
end

function gouttes:Notify(event)

	if (event == TM_ENTITY_ANIM_FINISH and GetLuaObject("T_gb_end").pass == 0) then
		JoueSon3DOnAtomic("Gouttes", self.name, "QuadPatch05", 0, -1)
		local tmp = random() * 1.5
		StartClock(self.name, tmp,0)
		if self.tb == 1 then
			RestoreTemporarySpeed( "Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip( "Player1")
			self.tb = 0
		end
	end

end

