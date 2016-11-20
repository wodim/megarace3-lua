NME_NME={first,baleze}

function NME_NME:Init()

	self.first = FALSE
	self.baleze = FALSE

end

function NME_NME:Update()

	if IsSelected()==TRUE and self.first==FALSE then
		StartTextGrab(11)
		self.first = TRUE
	end

	if self.first==TRUE then
		player = GetGrabbedText()
		if strlen(player) > 11 then
			player = strsub(player,1,11)
		end
		PrintStringOn("CURRENT", player, S_FONTE, S_TPF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushEnterSelected()==TRUE then
		StopEnter()
	end

end

function NME_NME:End()
end

function NME_NME:Notify(Event)

	if Event == TI_GRAB_END then

		if IsGrabbedTextCanceled()==0 then
			if player == "" then
				StartTextGrab(11)
			else
				if player == "SOMYDESBOIS" then
					self.baleze = TRUE
					StartTextGrab(11)
				elseif self.baleze == TRUE then
					InitPlayerBackup(player)
					SetTrackState(MODE_ARCADE, 8)
					SetTrackState(MODE_CATASTROPHE, 7)
					SetTrackState(MODE_CARRIERE, 1)
					SetCSFlag(1)
					UpdatePracticeResults(0,0,1)
					UpdatePracticeResults(0,1,1)
					UpdatePracticeResults(0,2,1)
					local i = 0
					while i < 4 do
						ActivePodBonus(i,1)
						i = i + 1
					end
					--LoadInterface("menu_principal")
					GetLuaObject("NME_Fond").gotosave = TRUE
				else
					InitPlayerBackup(player)
					--LoadInterface("menu_principal")
					GetLuaObject("NME_Fond").gotosave = TRUE
				end
			end

		else
			Selected("NME_BT_BACK")
			player = GetLuaObject("NME_Fond").oldplay
			LoadInterface(gComeFromNME)
		end

	end

end
