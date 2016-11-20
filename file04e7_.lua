LOA_FOND={change}

-- ************************************************************************************
-- Function 'Init'
-- ************************************************************************************
function LOA_FOND:Init()

	JoueSon2DNoInst("MenuAPP", 0,-1)

	ChangeTexture("CURRENT","Fond","interface_optionmenu")

	LoadEntityAnim("LOA_ANI_FOND","logo")
	StartEntityAnim("LOA_ANI_FOND","logo",1,-1,1)

	HideInterfaceEntity("LOA_TXT_GRDTITRE")
	HideInterfaceEntity("LOA_TXT_PETTITRE")
	HideInterfaceEntity("LOA_TXT_NOMJOUEUR")

	HideInterfaceEntity("LOA_BT_SELECT")
--	HideInterfaceEntity("LOA_BT_SELECT01")

	HideInterfaceEntity("LOA_BT_BACK")
--	HideInterfaceEntity("LOA_BT_BACK01")

	HideInterfaceEntity("LOA_BT_PLAYER")
	HideInterfaceEntity("LOA_BT_POD_TXT")
	HideInterfaceEntity("LOA_BT_POD_NUM")
	HideInterfaceEntity("LOA_BT_ATT_TXT")
	HideInterfaceEntity("LOA_BT_ATT_NUM")
	HideInterfaceEntity("LOA_BT_DEF_TXT")
	HideInterfaceEntity("LOA_BT_DEF_NUM")
	HideInterfaceEntity("LOA_BT_VIT_TXT")
	HideInterfaceEntity("LOA_BT_VIT_NUM")

	HideInterfaceEntity("LOA_TXT_GDTITRE")
	HideInterfaceEntity("LOA_TXT_NOM_INFO")
	HideInterfaceEntity("LOA_TXT_ECRANINFO")
	HideInterfaceEntity("LOA_TXT_INFODIVERSE")
	HideInterfaceEntity("LOA_BT_ECRANTV")
	HideInterfaceEntity("LOA_BT_ECRANTV01")

	Selected("LOA_BT_PLAYER")

	gLS_backupOffset = 0
	gLS_chosenBackup = 0

	self.change = FALSE;

end

-- ************************************************************************************
-- Function 'Update'
-- ************************************************************************************
function LOA_FOND:Update()

	if PushEsc()==1 then
		StopEsc()
		Selected("LOA_BT_BACK")
		ResetSLDS()

		if GetGlobalVariable("gCallSaveMenu")==TRUE then
			gLS_mode		= LS_MODE_NONE
			gLS_state		= LS_STATE_NONE
		end

		LoadInterface(GetPrevInterfName())
	end

	local pf = GetPlatform()

	-- --------------------------------------------------------------------------------
	-- TEST IF SOMETHING HAS CHANGED
	-- --------------------------------------------------------------------------------
	if SomethingHasGhanged()==TRUE then

		Selected("LOA_BT_BACK")
		ResetSLDS()

		if GetGlobalVariable("gCallSaveMenu")==TRUE then
			gLS_mode		= LS_MODE_NONE
			gLS_state		= LS_STATE_NONE
		end

		StartPopupByScript("Popup", 522, POPUP_STATE_NONE)
	end

	-- --------------------------------------------------------------------------------
	-- MODE SAVE (PS2)
	-- --------------------------------------------------------------------------------
	--SaveAutomateUpdatePart2(pf, "LOA_BT_CHOIXACTIF01")
	SaveAutomateUpdatePart2(pf, nil)

	-- --------------------------------------------------------------------------------
	-- MODE LOAD
	-- --------------------------------------------------------------------------------
	LoadAutomateUpdatePart2(pf, nil)

	-- --------------------------------------------------------------------------------
	-- MODE DEL
	-- --------------------------------------------------------------------------------
	--DelAutomateUpdatePart2(pf, "LOA_BT_CHOIXACTIF01")
	DelAutomateUpdatePart2(pf, nil)

end

-- ************************************************************************************
-- Function 'End'
-- ************************************************************************************
function LOA_FOND:End()
end

-- ************************************************************************************
-- Function 'Clock'
-- ************************************************************************************
function LOA_FOND:Clock(Id)

	LoadAutomateClockPart2(Id)

end

-- ************************************************************************************
-- Function 'Popup'
-- ************************************************************************************
function LOA_FOND:Popup(id, res)

	-- --------------------------------------------------------------------------------
	if gLS_mode==LS_MODE_NONE and gLS_state==LS_STATE_NONE and id==522 then
		LoadInterface(GetPrevInterfName())
	end

	-- --------------------------------------------------------------------------------
	-- MODE SAVE (PS2)
	-- --------------------------------------------------------------------------------
	SaveAutomatePopupPart2(id, res)

	-- --------------------------------------------------------------------------------
	-- MODE LOAD
	-- --------------------------------------------------------------------------------
	LoadAutomatePopupPart2(id, res)

	-- --------------------------------------------------------------------------------
	-- MODE DEL
	-- --------------------------------------------------------------------------------
	DelAutomatePopupPart2(id, res)

end
