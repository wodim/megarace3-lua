t_compute={}


function t_compute:Init()
end


function t_compute:Update()

	if SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" )==TRUE then

		local time			= clockL4.Time(clockL4) / 1000
		local percentKillL4	= killedEnemiesNum * 100 / enemiesNum

		PrintDebug("_____________________________________________________________________________________")
		PrintDebug("Go to next state ???")
		PrintDebug("Time:"..time)
		PrintDebug("Kill:"..percentKillL4)
		PrintDebug("...")

		-- .............................................................................
		-- Phase 1
		-- .............................................................................
		if trackStateL4==1 then
			-- Gagné ?
			if time <= timePart1 and percentKillL4 >= PERCENT_P1 then
				playerWin = TRUE

			-- Vers phase 2
			else
				InitPart2(TRUE)
			end


		-- .............................................................................
		-- Phase 2
		-- .............................................................................
		elseif trackStateL4==2 then

			-- Vers phase 1
			if time <= timePart2 and percentKillL4 >= PERCENT_P2 then
				InitPart1(FALSE)

			-- Vers phase 3
			else
				InitPart3(TRUE)
			end


		-- .............................................................................
		-- Phase 3
		-- .............................................................................
		elseif trackStateL4==3 then

			-- Vers phase 2
			if time <= timePart3 and percentKillL4 >= PERCENT_P3 then
				InitPart2(FALSE)

			-- Vers phase 4
			else
				InitPart4(TRUE)
			end


		-- .............................................................................
		-- Phase 4
		-- .............................................................................
		elseif trackStateL4==4 then

			-- Vers phase 3
			if time <= timePart4 and percentKillL4 >= PERCENT_P4 then
				InitPart3(FALSE)

			-- Perdu !
			else
				playerLost = TRUE
			end
		end

		killedEnemiesNum = 0
		SetPercentIG(100)
		clockL4.Start(clockL4)

		PrintDebug("Current state:"..trackStateL4)
		PrintDebug("_____________________________________________________________________________________")

	end

end


function t_compute:End()
end
