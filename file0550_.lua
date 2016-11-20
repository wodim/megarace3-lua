GAR_Fond={gm}

-- Function 'Init'
function GAR_Fond:Init()

	JoueSon2DNoInst("MenuAPP", 0,-1)
	OldPodname = ""
	LoadEntityAnim("GAR_ANI_Fond","logo")
	StartEntityAnim("GAR_ANI_Fond","logo",1,-1,1)

	ChangeTexture("CURRENT","Fond","interfaceok")

	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")


	HideInterfaceEntity("GAR_TXT_GRDTITRE")
	HideInterfaceEntity("GAR_TXT_PETTITRE")
	HideInterfaceEntity("GAR_TXT_NOMJOUEUR")

	HideInterfaceEntity("GAR_BT_SELECT")

	HideInterfaceEntity("GAR_BT_BACK")


	HideInterfaceEntity("GAR_BT_CHOIXACTIF01")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF02")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF03")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF04")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF05")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF06")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF07")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF08")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF09")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF10")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF11")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF12")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF13")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF14")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF15")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF16")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF17")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF18")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF19")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF20")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF21")
	HideInterfaceEntity("GAR_BT_CHOIXACTIF22")
	HideInterfaceEntity("GAR_Fleche02")
	HideInterfaceEntity("GAR_Fleche10")



	HideInterfaceEntity("GAR_TXT_GDTITRE")
	HideInterfaceEntity("GAR_TXT_NOM_INFO")
	HideInterfaceEntity("GAR_TXT_ECRANINFO")
	HideInterfaceEntity("GAR_TXT_INFODIVERSE")
	HideInterfaceEntity("GAR_TXT_INFOTRACK")

	HideInterfaceEntity("GAR_TXT_LOGOM3")
	HideInterfaceEntity("GAR_BT_ECRANTV")
	HideInterfaceEntity("GAR_BT_ECRANTV01")


	Selected("GAR_BT_CHOIXACTIF01")
	self.gm = GetGameMode()

	if self.gm == 2 or (self.gm > 6 and self.gm < 11) then
		HideInterfaceEntity("GAR_Fleche03")
		HideInterfaceEntity("GAR_Fleche04")
		HideInterfaceEntity("GAR_Fleche05")
		HideInterfaceEntity("GAR_Fleche11")
		HideInterfaceEntity("GAR_Fleche12")
		HideInterfaceEntity("GAR_Fleche13")
	end
	local Statec = 8
	if self.gm == 2 then
		Statec = GetTrackState(self.gm)
	end
		 

	InitGarage(self.gm,Statec)
end

-- Function 'Update'
function GAR_Fond:Update()

	local pdnme = GetUsedPodName()	
	AfficheInfoGarage(pdnme)
	
	if PushEsc()==1 then
		StopEsc()
		Selected("GAR_BT_BACK")
		if GetGameMode() == 2 then
			LoadInterface("Menu_Arcade")
		elseif GetGameMode() == 4 then
			LoadInterface("Menu_Carriere")
		elseif GetGameMode() >6 then
			LoadInterface("Menu_multiwait")
		end
	end

	if mustLeaveNetGame() == 1 then
		if isGameMaster() == FALSE then
			terminateNetworkGame()
			terminateNetwork()
			SetGlobalVariable("ServerDropped",1)
			LoadInterface("Menu_Multi")
		end
	end


end

-- Function 'End'

function GAR_Fond:End()
	ClearModePod(self.gm)
end

