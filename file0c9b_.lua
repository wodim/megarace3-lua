v_GB={visible}


function v_GB:Init()

	LoadEntityAnim("CURRENT", "v_GB")
	StartEntityAnim("CURRENT", "v_GB", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

--	SetEntityDamage("CURRENT", VGB_COL_LIFE)
--	SetEntityDamageMult("CURRENT", VGB_COL_LIFE_FACTOR)

end


function v_GB:Update()
end


function v_GB:End()
end


function v_GB:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_COLLISION then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, VGB_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, VGB_NRJ_LOST)
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
