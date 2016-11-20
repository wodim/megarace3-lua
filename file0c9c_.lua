VIRUS={visible}


function VIRUS:Init()

	LoadEntityAnim("CURRENT", "virus")
	StartEntityAnim("CURRENT", "virus", -1, -1, 1)

	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)

--	SetEntityDamage("CURRENT", VGA_COL_LIFE)
--	SetEntityDamageMult("CURRENT", VGA_COL_LIFE_FACTOR)

end


function VIRUS:Update()
end


function VIRUS:End()
end


function VIRUS:Notify(event)

	if self.visible==TRUE then
		if event==TM_ENTITY_COLLISION then
			NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, VGA_LIFE_LOST)
			NotifyToEntiy("Player1", TE_ADD_ENERGIE, VGA_NRJ_LOST)
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
