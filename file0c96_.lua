Dummy_Globule_Norm01={visible, enable}


function Dummy_Globule_Norm01:Init()

	LoadEntityAnim("CURRENT", "globule")
	StartEntityAnim("CURRENT", "globule", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
	ConvertObjectToPhantom("CURRENT")

end


function Dummy_Globule_Norm01:Update()

	if self.visible==TRUE then
		local toDisable = FALSE

		if IsEntityIn("Player1", "CURRENT")==1 then
			self.enable = TRUE
		else
			if self.enable==TRUE then
				toDisable = TRUE
			end
			self.enable = FALSE
		end

		if self.enable==TRUE then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, G_LIFE_LOST)
			DiminishSpeed("Player1", G_SPEED_LOST)
			AddTemporarySpeed("Player1", G_SPEED_MAX, TRUE)
			AddTemporaryAcceleration("Player1", G_ACC_MAX, TRUE)
			AddTemporaryGrip("Player1", G_GRIP_MAX, TRUE)
		end

		if toDisable==TRUE then
			toDisable = FALSE
			RestoreTemporarySpeed("Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip("Player1")
		end
	end

end


function Dummy_Globule_Norm01:End()
end


function Dummy_Globule_Norm01:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_DEAD then
			DisableEntity("Dummy_Globule_Norm01", "Glob")
			killedEnemiesNum = killedEnemiesNum + 1
			--SetPercentIG( 100 - (killedEnemiesNum * 100 / enemiesNum) )
			if killedEnemiesNum < ennemis2Kill then
				SetPercentIG( 100 - (killedEnemiesNum * 100 / ennemis2Kill) )
			else
				SetPercentIG( 0 )
			end
		end
	end

end
