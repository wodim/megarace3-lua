CTRL_TIME_DELAY				= 10000
CTRL_TIME_DELAY_FLASHING	= 400

CTRL_Fond={}

-- Function 'Init'
function CTRL_Fond:Init()

	JoueSon2DNoInst("MenuAPP", 0,-1)
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	LoadEntityAnim("CTRL_ANI_Fond","logo")
	StartEntityAnim("CTRL_ANI_Fond","logo",1,-1,1)
	ChangeTexture("CURRENT","Fond","logocentrename")
	HideInterfaceEntity("CTRL_TXT_GRDTITRE")
	HideInterfaceEntity("CTRL_TXT_PETTITRE")
	HideInterfaceEntity("ctrl_TXT_NOMJOUEUR")
	HideInterfaceEntity("CTRL_TXT_INFODIVERSE")

	HideInterfaceEntity("CTRL_BT_BACK")
	HideInterfaceEntity("CTRL_BT_SELECT")

	HideInterfaceEntity("CTRL_keyboard01")

	HideInterfaceEntity("CTRL_fonction01")
	HideInterfaceEntity("CTRL_choixfonction01")
	HideInterfaceEntity("CTRL_fonction02")
	HideInterfaceEntity("CTRL_choixfonction02")
	HideInterfaceEntity("CTRL_fonction03")
	HideInterfaceEntity("CTRL_choixfonction03")
	HideInterfaceEntity("CTRL_fonction04")
	HideInterfaceEntity("CTRL_choixfonction04")
	HideInterfaceEntity("CTRL_fonction05")
	HideInterfaceEntity("CTRL_choixfonction05")
	HideInterfaceEntity("CTRL_fonction06")
	HideInterfaceEntity("CTRL_choixfonction06")
	HideInterfaceEntity("CTRL_fonction07")
	HideInterfaceEntity("CTRL_choixfonction07")
	HideInterfaceEntity("CTRL_fonction08")
	HideInterfaceEntity("CTRL_choixfonction08")
	HideInterfaceEntity("CTRL_fonction09")
	HideInterfaceEntity("CTRL_choixfonction09")
	HideInterfaceEntity("CTRL_fonction10")
	HideInterfaceEntity("CTRL_choixfonction10")
	HideInterfaceEntity("CTRL_fonction11")
	HideInterfaceEntity("CTRL_choixfonction11")
	HideInterfaceEntity("CTRL_fonction12")
	HideInterfaceEntity("CTRL_choixfonction12")

--	ChangeTexture("CURRENT","Fond","map_page_CFG02")

	gCurConfig = GetPlayerConfigIndex(PLAYER_1)
	if gCurConfig<0 and GetConfigNum()>0 then
		gCurConfig = 0
	end

	Selected("CTRL_keyboard01")
end

-- Function 'Update'
function CTRL_Fond:Update()

	if PushEsc()==1 then
		StopEsc()
		Selected("CTRL_BT_BACK")
		AssignConfigToPlayer(gCurConfig, PLAYER_1)
		AddPlayersControls()
		LoadInterface("Menu_Game_Options")
	end

end

-- Function 'End'
function CTRL_Fond:End()
end

function CTRL_Fond:Clock(Id)
end
