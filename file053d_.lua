NME_BT_SELECT={baleze,aff}

-- Function 'Init'
function NME_BT_SELECT:Init()
	self.baleze = FALSE
	if GetPlatform() == PLATFORM_PS2 then
		self.aff = 1
	else
		self.aff = 0
		HideInterfaceEntity("NME_BT_SELECT01")
	end

end

-- Function 'Update'
function NME_BT_SELECT:Update()

	if self.aff == 1 then
	if IsSelected()==TRUE then
		PrintTextOn("CURRENT", 27, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 27, S_FONTE, S_PF,"CENTER", S_bsel.r1, S_bsel.v1,S_bsel.b1,S_bsel.a1,S_bsel.r2,S_bsel.v2,S_bsel.b2,S_bsel.a2)
	end

	if PushEscSelected()==TRUE then
		StopEsc()
		Selected("NME_1")
	end

	if PushEnterSelected()==TRUE then
		StopEnter()

		local nmeplayer = ""
		--if GetPlatform()==PLATFORM_PS2 then
			nmeplayer = strchar(GetAlphaChar(NMEI1),GetAlphaChar(NMEI2),GetAlphaChar(NMEI3),GetAlphaChar(NMEI4),GetAlphaChar(NMEI5),GetAlphaChar(NMEI6),GetAlphaChar(NMEI7),GetAlphaChar(NMEI8),GetAlphaChar(NMEI9),GetAlphaChar(NMEI10),GetAlphaChar(NMEI11))
		--end

		if nmeplayer == "SOMYDESBOIS" then
			self.baleze = 1
			local car = 0
			while strchar(GetAlphaChar(car)) ~= "A" do
				car = car + 1
			end
			NMEI1 = car
			NMEI2 = car
			NMEI3 = car
			NMEI4 = car
			NMEI5 = car
			NMEI6 = 0
			NMEI7 = 0
			NMEI8 = 0
			NMEI9 = 0
			NMEI10 = 0
			NMEI11 = 0
			Selected("NME_1")

		elseif self.baleze == 1 then
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
				ActiveAttModuleBonus(i,1)
				ActiveDefModuleBonus(i,1)
				ActiveSpeedModuleBonus(i,1)
				i = i + 1
			end
			--LoadInterface("menu_principal")
			GetLuaObject("NME_Fond").gotosave = TRUE

		else
			InitPlayerBackup(nmeplayer)
			--LoadInterface("Menu_principal")
			GetLuaObject("NME_Fond").gotosave = TRUE
		end
	end
	end
end

-- Function 'End'
function NME_BT_SELECT:End()
end
