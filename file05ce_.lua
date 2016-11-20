CMU_Create={go}

-- Function 'Init'
function CMU_Create:Init()
	self.go = 0
end

-- Function 'Update'
function CMU_Create:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	elseif GetGlobalVariable("PodSelected") == 1 then
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	else
		PrintTextOn("CURRENT", 148, S_FONTE, S_MF,"LEFT", S_selg.r1, S_selg.v1,S_selg.b1,S_selg.a1,S_selg.r2,S_selg.v2,S_selg.b2,S_selg.a2)

	end

	if self.go == 0 then
		if PushUpSelected() == 1 then
			StopUp()
			Selected("CMU_password")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end

		if PushDownSelected() == 1 then
			StopDown()
			if GetLuaObject("CMU_Team").aff == 1 then
				Selected("CMU_Team")	
			else
				Selected("CMU_password")
			end
			JoueSon2DNoInst("MenuHB", 0,-1)
		end


		if PushEnterSelected() == 1 then
			StopEnter()
			if cmuIsChatOn==FALSE then
--				SetGlobalVariable("PodSelected",0)
				if isGameMaster() == FALSE then	
					clientReadyToPlay()
					self.go = 1
				else
					if playersReady() == TRUE then
						local trckidx	= getSomyRace() * 2
						SetEtat(trckidx)
					end
 				end
			end
		end
	end
end

-- Function 'End'
function CMU_Create:End()

end

