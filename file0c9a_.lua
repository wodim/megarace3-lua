v_A={visible}


function v_A:Init()

	LoadEntityAnim("CURRENT", "v_A")
	StartEntityAnim("CURRENT", "v_A", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

--	SetEntityDamage("CURRENT", VNA_COL_LIFE)
--	SetEntityDamageMult("CURRENT", VNA_COL_LIFE_FACTOR)

end


function v_A:Update()
end


function v_A:End()
end


function v_A:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_COLLISION then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, VNA_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, VNA_NRJ_LOST)
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
