PRI_Fond={oldSelected}

-- Function 'Init'
function PRI_Fond:Init()

	ChargeSon("MenuAPP")
	ChargeSon("MenuHB")
	ChargeSon("MenuGD")
	ChargeSon("MenuVAL")
	ChargeSon("MenuIMP")
	ChargeSon("MenuPOP")

	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	ChangeTexture("CURRENT","Fond","gametype")

	JoueFluxMusique("InterfaceMenu", 0, 1);
	JoueSon2DNoInst("MenuAPP",0,-1)

	LoadEntityAnim("PRI_ANI_Fond","logo")
	StartEntityAnim("PRI_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("PRI_TXT_GRDTITRE")
	HideInterfaceEntity("PRI_TXT_PETTITRE")
	HideInterfaceEntity("PRI_BT_NOMJOUEUR")

	HideInterfaceEntity("PRI_BT_SELECT")

	HideInterfaceEntity("PRI_BT_BACK")

	HideInterfaceEntity("PRI_BT_CHOIXACTIF01")
	HideInterfaceEntity("PRI_BT_CHOIXACTIF02")
	HideInterfaceEntity("PRI_BT_CHOIXACTIF03")
	HideInterfaceEntity("PRI_BT_CHOIXACTIF04")
	HideInterfaceEntity("PRI_BT_CHOIXACTIF05")
	HideInterfaceEntity("PRI_BT_CHOIXACTIF06")
	HideInterfaceEntity("PRI_BT_CHOIXACTIF07")

	HideInterfaceEntity("PRI_TXT_GDTITRE")
	HideInterfaceEntity("PRI_TXT_NOM_INFO")
	HideInterfaceEntity("PRI_TXT_LOGOM3")
	HideInterfaceEntity("PRI_TXT_ECRANINFO")
	HideInterfaceEntity("PRI_TXT_INFODIVERSE")
	HideInterfaceEntity("PRI_BT_ECRANTV")
	HideInterfaceEntity("PRI_BT_ECRANTV01")

	self.oldSelected = ""

	Selected("PRI_BT_CHOIXACTIF01")

	if GetGlobalVariable("gCallSaveMenu")==TRUE then
		gLS_mode	= LS_MODE_SAVE
		gLS_state	= LS_STATE_INIT
	else
		gLS_mode	= LS_MODE_NONE
		gLS_state	= LS_STATE_NONE
	end

end

-- Function 'Update'
function PRI_Fond:Update()

	if GetGlobalVariable("gCallSaveMenu")==FALSE then
		if GetPlatform()==PLATFORM_PC and PushEsc()==1 then
			StopEsc()
			self.oldSelected = GetSelectedEntity()
			Selected("PRI_BT_BACK")
			StartPopupByScript("Popup",660, POPUP_STATE_YES_NO)
		end
	end

	-- Sauvegarde ...
	if gLS_mode==LS_MODE_SAVE then
		if gLS_state==LS_STATE_INIT then
--			if GetGlobalVariable("gCallSaveMenu")==TRUE then
				if GetGlobalVariable("gOnlyGameData")==TRUE then
					PrintDebug("############################## SAVE GAME DATA")
					gLS_state = LS_STATE_ENTER
				else
					if GetGlobalVariable("gAskToSave")==TRUE then
						PrintDebug("############################## ASK TO SAVE")
						StartPopupByScript("Popup",661, POPUP_STATE_YES_NO)
						gLS_state = LS_STATE_WAIT
					else
						PrintDebug("############################## SAVE")
						gLS_state	= LS_STATE_ENTER
						SetGlobalVariable("gAskToSave", TRUE)
					end
				end
--			end
		end
	end

	SaveAutomateUpdatePart1(GetPlatform(), nil, nil)

	FormatAutomateUpdate()
	
end

-- Function 'End'
function PRI_Fond:End()
end


-- ************************************************************************************
-- Function 'Clock'
-- ************************************************************************************
function PRI_Fond:Clock(Id)
	CommonAutomateClockPart1(Id)
end

-- ************************************************************************************
-- Function 'Popup'
-- ************************************************************************************
function PRI_Fond:Popup(id,res)

	-- Quit the game ?
	if id==660 then
		if res==POPUP_YES then
			QuitGame()
		else
			if self.oldSelected==nil or self.oldSelected=="" then
				Selected("PRI_BT_CHOIXACTIF01")
			else
				Selected(self.oldSelected)
			end
		end
	end

	-- Save ?
	if id==661 then
		if res==POPUP_YES then
			gLS_state	= LS_STATE_ENTER
		elseif res==POPUP_NO then
			SetGlobalVariable("gCallSaveMenu", FALSE)
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
		end
	end

	SaveAutomatePopupPart1(id, res)

	FormatAutomatePopup(id, res, TRUE)

end
