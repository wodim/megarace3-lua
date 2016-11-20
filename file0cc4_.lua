t_pluieacides={ok}

function t_pluieacides:Init()
	self.ok = 0
end

function t_pluieacides:Update()

	if GetLuaObject("t_pluie_off").pass == 1 then
		if (IsEntityInTrigger( "Player1", "t_pluieacides") == 1 and self.ok == 0) then
			NotifyToEntiy("Player1",TE_ADD_LIFE_WITH_SHIELD, -80)
			StartClock("t_pluieacides",2,0)
			startSFX("camfx_rain")
			self.ok =1
			
			JoueSon2D("PluieAci", "CURRENT", TRUE, -1)
		end
	end

end

function t_pluieacides:End()
end

function t_pluieacides:Clock(Id)
	if Id == 0 then
		if (IsEntityInTrigger("Player1","CURRENT" ) == 1 ) then
			NotifyToEntiy("Player1",TE_ADD_LIFE_WITH_SHIELD, -80)
			StartClock("t_pluieacides",2,0)
		else
			stopSFX("camfx_rain")
			StoppeSon("PluieAci", "CURRENT")
		end
	end
end
