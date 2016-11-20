LS_FOND={}

-- ************************************************************************************
-- Function 'Init'
-- ************************************************************************************
function LS_FOND:Init()

	JoueSon2DNoInst("MenuAPP", 0, -1)

	--ChangeTexture("CURRENT", "Fond", "save")
	ChangeTexture("CURRENT","Fond","interface_optionmenu")

	LoadEntityAnim("LS_ANI_FOND", "logo")
	StartEntityAnim("LS_ANI_FOND", "logo", 1, -1, 1)

	HideInterfaceEntity("LS_TXT_GRDTITRE")
	HideInterfaceEntity("LS_TXT_PETTITRE")
	HideInterfaceEntity("LS_TXT_NOMJOUEUR")

	if GetPlatform() == PLATFORM_PC then
		HideInterfaceEntity("LS_BT_SELECT01")
		HideInterfaceEntity("LS_BT_BACK01")
	end

	HideInterfaceEntity("LS_BT_SELECT")
	HideInterfaceEntity("LS_BT_BACK")

	HideInterfaceEntity("LS_BT_CHOIXACTIF01")
	HideInterfaceEntity("LS_BT_CHOIXACTIF02")
	HideInterfaceEntity("LS_BT_CHOIXACTIF03")
	HideInterfaceEntity("LS_BT_CHOIXACTIF04")

	HideInterfaceEntity("LS_TXT_GDTITRE")
	HideInterfaceEntity("LS_TXT_NOM_INFO")
	HideInterfaceEntity("LS_TXT_ECRANINFO")
	HideInterfaceEntity("LS_TXT_INFODIVERSE")
	HideInterfaceEntity("LS_BT_ECRANTV")
	HideInterfaceEntity("LS_BT_ECRANTV01")

	Selected("LS_BT_CHOIXACTIF01")

	ResetSLDS()

end

-- ************************************************************************************
-- Function 'Update'
-- ************************************************************************************
function LS_FOND:Update()

	if PushEsc()==TRUE then
		StopEsc()
		Selected("LS_BT_BACK")
		ResetSLDS()
		LoadInterface("Menu_Principal")
	end

	local pf = GetPlatform()

	-- --------------------------------------------------------------------------------
	-- MODE FORMAT
	-- --------------------------------------------------------------------------------
	FormatAutomateUpdate()

	-- --------------------------------------------------------------------------------
	-- MODE SAVE
	-- --------------------------------------------------------------------------------
	SaveAutomateUpdatePart1(pf, "LS_BT_CHOIXACTIF03", nil)

	-- --------------------------------------------------------------------------------
	-- MODE LOAD
	-- --------------------------------------------------------------------------------
	LoadAutomateUpdatePart1(pf, "LS_BT_CHOIXACTIF02")

	-- --------------------------------------------------------------------------------
	-- MODE DEL
	-- --------------------------------------------------------------------------------
	DelAutomateUpdatePart1(pf, "LS_BT_CHOIXACTIF04")

end

-- ************************************************************************************
-- Function 'End'
-- ************************************************************************************
function LS_FOND:End()
end

-- ************************************************************************************
-- Function 'Clock'
-- ************************************************************************************
function LS_FOND:Clock(Id)
	CommonAutomateClockPart1(Id)
end

-- ************************************************************************************
-- Function 'Popup'
-- ************************************************************************************
function LS_FOND:Popup(id, res)

	-- --------------------------------------------------------------------------------
	-- MODE FORMAT
	-- --------------------------------------------------------------------------------
	FormatAutomatePopup(id, res, FALSE)

	-- --------------------------------------------------------------------------------
	-- MODE SAVE
	-- --------------------------------------------------------------------------------
	SaveAutomatePopupPart1(id, res)

	-- --------------------------------------------------------------------------------
	-- MODE LOAD
	-- --------------------------------------------------------------------------------
	LoadAutomatePopupPart1(id, res)

	-- --------------------------------------------------------------------------------
	-- MODE DEL
	-- --------------------------------------------------------------------------------
	DelAutomatePopupPart1(id, res)

end
