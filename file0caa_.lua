o3d_blobule03={visible, enable}

function o3d_blobule03:Init()

	LoadEntityAnim("CURRENT", "blobule")
	StartEntityAnim("CURRENT", "blobule", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
	ConvertObjectToPhantom("CURRENT")

end

function o3d_blobule03:Update()

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
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, B_LIFE_LOST)
			DiminishSpeed("Player1", B_SPEED_LOST)
			AddTemporarySpeed("Player1", B_SPEED_MAX, TRUE)
			AddTemporaryAcceleration("Player1", B_ACC_MAX, TRUE)
			AddTemporaryGrip("Player1", B_GRIP_MAX, TRUE)
		end

		if toDisable==TRUE then
			toDisable = FALSE
			RestoreTemporarySpeed("Player1")
			RestoreTemporaryAcceleration("Player1")
			RestoreTemporaryGrip("Player1")
		end
	end

end

function o3d_blobule03:End()
end


function o3d_blobule03:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_DEAD then
			DisableEntity("o3d_blobule03", "Blob")
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
