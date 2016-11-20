projection={name,fois}

function projection:Init()
	self.name = GetEntityName()
	self.fois = 0

end

function projection:Update()
	if IsEntityIn("Player1", self.name)==1 and self.fois == 0 then
		NotifyToEntiy("Player1",TE_ADD_LIFE_WITH_SHIELD, -350)	
		PodVibrator( "Player1", 0, 0, 10000, 10, 1000, 2 )
		DiminishSpeed( "Player1", 0.5)
		AddTemporarySpeed( "Player1", -0.6, 1)
		AddTemporaryAcceleration( "Player1", -0.9, 1)
		AddTemporaryGrip( "Player1", -0.5, 1);
		local tmp = 1 + random()
		StartClock(self.name, tmp,0)
		self.fois = 1
	end

end

function projection:End()
end

function projection:Clock(Id)
	
	if Id == 0 then
		RestoreTemporarySpeed( "Player1")
		RestoreTemporaryAcceleration("Player1")
		RestoreTemporaryGrip( "Player1")
		self.fois = 0
	end

end

function projection:Notify(Event)

	

end









