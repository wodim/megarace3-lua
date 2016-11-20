v_PA={visible}


function v_PA:Init()

	LoadEntityAnim("CURRENT", "v_PA")
	StartEntityAnim("CURRENT", "v_PA", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

--	SetEntityDamage("CURRENT", VPA_COL_LIFE)
--	SetEntityDamageMult("CURRENT", VPA_COL_LIFE_FACTOR)

end


function v_PA:Update()
end


function v_PA:End()
end


function v_PA:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_COLLISION then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, VPA_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, VPA_NRJ_LOST)
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
