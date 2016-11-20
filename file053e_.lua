NME_Fond={oldplay, gotosave}

-- Function 'Init'
function NME_Fond:Init()

	JoueSon2DNoInst("MenuAPP", 0,-1)
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	self.oldplay = player
	self.gotosave = FALSE
	player = ""

	if gComeFromNME==nil then
		gComeFromNME = GetPrevInterfName()
	end

	LoadEntityAnim("NME_ANI_Fond","logo")
	StartEntityAnim("NME_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("NME_BT_SELECT")
	HideInterfaceEntity("NME_BT_BACK")
	HideInterfaceEntity("NME_TXT_LOGOM3")
	HideInterfaceEntity("NME_TXT_PETTITRE")
	HideInterfaceEntity("NME_TXT_GRDTITRE")
	HideInterfaceEntity("NME_TXT_NOMJOUEUR")
	HideInterfaceEntity("NME_TXT_INFODIVERSE")
	HideInterfaceEntity("NME_TXT_DESC")
	HideInterfaceEntity("NME_NME")

	local nme_i = 1
	while nme_i<12 do
		local tmp = "NME_"..nme_i
		local tmp2 = "NME_"..nme_i.."_S"
		if GetPlatform()==PLATFORM_PC then
			HideInterfaceEntity(tmp)
		end
		HideInterfaceEntity(tmp2)
		nme_i = nme_i + 1
	end

	-- PS2
	if GetPlatform() == PLATFORM_PS2 then
		ChangeTexture("NME_1", "LETTRE_H", "case")
		ChangeTexture("NME_1_S", "LETTRE_H2", "caseg")

		BuildAlphabet(S_FONTE)

		NMEI1 = 0
		NMEI2 = 0
		NMEI3 = 0
		NMEI4 = 0
		NMEI5 = 0

		local car = 0
		while strchar(GetAlphaChar(car)) ~= " " do
			car = car + 1
		end

		NMEI6	= car
		NMEI7	= car
		NMEI8	= car
		NMEI9	= car
		NMEI10	= car
		NMEI11	= car

		HideInterfaceEntity("NME_1")
		ShowInterfaceEntity("NME_1_S")
		Selected("NME_1")
	else
		Selected("NME_NME")
	end

	ChangeTexture("CURRENT","Fond","logocentrename")

end

-- Function 'Update'
function NME_Fond:Update()

	if self.gotosave==TRUE then
		self.gotosave	= FALSE
		gLS_mode		= LS_MODE_SAVE
		gLS_state		= LS_STATE_ENTER
	end

	FormatAutomateUpdate()
	SaveAutomateUpdatePart1(GetPlatform(), nil, "menu_principal")

end

-- Function 'End'
function NME_Fond:End()
end

-- Function 'Clock'
function NME_Fond:Clock(Id)

	CommonAutomateClockPart1(Id)

end

-- Function 'Popup'
function NME_Fond:Popup(id, res)

	FormatAutomatePopup(id, res, FALSE)
	SaveAutomatePopupPart1(id, res)

end

-- Function 'Notify'
function NME_Fond:Notify(id)
end
