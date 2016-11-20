vague={name, module1SFX }

function vague:Init()
	self.name = GetEntityName()
	self.module1SFX = GetEntityName() .. "vag"
	loadSFX( GetEntityName(), self.module1SFX, "sfx_vague" )
	startSFX( self.module1SFX )
end

function vague:Update()
end

function vague:End()
end

function vague:Clock(Id)

	if Id == 0 then
		RestoreTemporarySpeed( "Player1")
		RestoreTemporaryAcceleration("Player1")
		RestoreTemporaryGrip( "Player1")
	end

end


function vague:Notify(event)

	if event == TM_ENTITY_COLLISION then
		if HitEntity("CURRENT") == "Player1" then
			NotifyToEntiy("Player1",TE_ADD_LIFE_WITH_SHIELD, -25)	
			PodVibrator( "Player1", 0, 0, 30000, 10, 1000, 2 )
			DiminishSpeed( "Player1", 0.3)
			AddTemporarySpeed( "Player1", -0.4, 1)
			AddTemporaryAcceleration( "Player1", -0.7, 1)
			AddTemporaryGrip( "Player1", -0.3, 1);
			local tmp = 0.5
			StartClock(self.name, tmp, 0)
		end

	end
end
