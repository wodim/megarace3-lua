PAD_Fond={cc}

-- Function 'Init'
function PAD_Fond:Init()
	
	
	JoueSon2DNoInst("MenuAPP", 0,-1)
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	LoadEntityAnim("PRA_ANI_Fond","logo")
	StartEntityAnim("PRA_ANI_Fond","logo",1,-1,1)
	ChangeTexture("CURRENT","Fond","interface_pad")

	HideInterfaceEntity("PAD_TXT_GRDTITRE")
	HideInterfaceEntity("PAD_TXT_PETTITRE")
	HideInterfaceEntity("PAD_TXT_NOMJOUEUR")
	HideInterfaceEntity("PAD_TXT_GDTITRE")
	HideInterfaceEntity("PAD_TXT_INFODIVERSE")

	HideInterfaceEntity("choix_pad00")
	HideInterfaceEntity("choix_pad01")
	HideInterfaceEntity("choix_pad02")
	HideInterfaceEntity("choix_pad03")
	HideInterfaceEntity("choix_pad04")
	HideInterfaceEntity("choix_pad05")
	HideInterfaceEntity("choix_pad06")
	HideInterfaceEntity("choix_pad07")
	HideInterfaceEntity("choix_pad08")
	HideInterfaceEntity("choix_pad09")
	HideInterfaceEntity("choix_pad10")
	HideInterfaceEntity("choix_pad11")
	HideInterfaceEntity("choix_pad12")
	HideInterfaceEntity("choix_pad13")
	HideInterfaceEntity("choix_pad14")
	HideInterfaceEntity("choix_pad15")
	HideInterfaceEntity("choix_pad16")

	HideInterfaceEntity("PAD_BT_SELECT")

	HideInterfaceEntity("PAD_BT_BACK")


	HideInterfaceEntity("PAD_TXT_LOGOM3")
	self.cc = GetPadConfig()
end

-- Function 'Update'
function PAD_Fond:Update()

	PrintTextOn("PAD_TXT_INFODIVERSE", 124, S_FONTE, S_PF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	local i = 0
	while i < 17 do
		local value = 0
		if i < 10 then i = "0"..i end
		if self.cc == 1 then
			value = Configpad1[i+1]
		elseif self.cc == 2 then
			value = Configpad2[i+1]
		else
			value = Configpad3[i+1]
		end
		PrintTextOn("choix_pad"..i, value, S_FONTE, S_PF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		i = i + 1
	end

	if PushEsc()==1 then
		StopEsc()
		Selected("PAD_BT_BACK")
		LoadInterface("Menu_Game_Options")
	end

	if PushRight() == 1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0, -1)
		if self.cc == 1 then
			self.cc = 2
		elseif self.cc == 2 then
			self.cc = 3
		end
	end

	if PushLeft() == 1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0, -1)
		if self.cc == 2 then
			self.cc = 1
		elseif self.cc == 3 then
			self.cc = 2
		end

	end

	if PushEnter() == 1 then
		StopEnter()
		SetPadConfig(self.cc)
		Selected("PAD_BT_SELECT")
		LoadInterface("Menu_Game_Options")
	end
end

-- Function 'End'
function PAD_Fond:End()

end
