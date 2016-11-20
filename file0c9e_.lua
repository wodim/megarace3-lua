v_PB={visible}


function v_PB:Init()

	LoadEntityAnim("CURRENT", "v_PB")
	StartEntityAnim("CURRENT", "v_PB", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

--	SetEntityDamage("CURRENT", VPB_COL_LIFE)
--	SetEntityDamageMult("CURRENT", VPB_COL_LIFE_FACTOR)

end


function v_PB:Update()
end


function v_PB:End()
end


function v_PB:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_COLLISION then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, VPB_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, VPB_NRJ_LOST)
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
