v_B={visible}


function v_B:Init()

	LoadEntityAnim("CURRENT", "v_B")
	StartEntityAnim("CURRENT", "v_B", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

--	SetEntityDamage("CURRENT", VNB_COL_LIFE)
--	SetEntityDamageMult("CURRENT", VNB_COL_LIFE_FACTOR)

end


function v_B:Update()
end


function v_B:End()
end


function v_B:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_COLLISION then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, VNB_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, VNB_NRJ_LOST)
		end

		if event==TM_ENTITY_DEAD then
			DisableEntity(GetEntityName(), "Virus")
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
