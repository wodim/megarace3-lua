CAR_Fond={bla}

-- Function 'Init'
function CAR_Fond:Init()
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	JoueSon2DNoInst("MenuAPP", 0,-1)

	LoadEntityAnim("CAR_ANI_Fond","logo")
	StartEntityAnim("CAR_ANI_Fond","logo",1,-1,1)
	ChangeTexture("CURRENT","Fond","interfaceok")

	HideInterfaceEntity("CAR_TXT_GRDTITRE")
	HideInterfaceEntity("CAR_TXT_PETTITRE")
	HideInterfaceEntity("CAR_TXT_NOMJOUEUR")

	HideInterfaceEntity("CAR_BT_SELECT")

	HideInterfaceEntity("CAR_BT_BACK")

	HideInterfaceEntity("CAR_BT_CHOIXACTIF01")
	HideInterfaceEntity("CAR_BT_CHOIXACTIF02")

	HideInterfaceEntity("CAR_TXT_GDTITRE")
	HideInterfaceEntity("CAR_TXT_NOM_INFO")
--	HideInterfaceEntity("CAR_TXT_ECRANINFO")
	HideInterfaceEntity("CAR_TXT_INFODIVERSE")
--	HideInterfaceEntity("CAR_TXT_INFOTRACK")
	HideInterfaceEntity("CAR_TXT_circuit01")
	HideInterfaceEntity("CAR_TXT_CIRCUIT02")
	HideInterfaceEntity("CAR_TXT_CIRCUIT03")
	HideInterfaceEntity("CAR_TXT_CIRCUIT04")
	HideInterfaceEntity("CAR_TXT_CIRCUIT05")
	HideInterfaceEntity("CAR_TXT_CIRCUIT06")
	HideInterfaceEntity("CAR_TXT_CIRCUIT07")
	HideInterfaceEntity("CAR_TXT_CIRCUIT08")
	HideInterfaceEntity("CAR_TXT_CIRCUIT09")
	HideInterfaceEntity("CAR_TXT_CIRCUIT10")
	HideInterfaceEntity("CAR_TXT_CIRCUIT11")
	HideInterfaceEntity("CAR_TXT_CIRCUIT12")
	HideInterfaceEntity("CAR_TXT_CIRCUIT13")
	HideInterfaceEntity("CAR_TXT_CIRCUIT14")
	HideInterfaceEntity("CAR_TXT_CIRCUIT15")
	HideInterfaceEntity("CAR_TXT_CIRCUIT16")
	HideInterfaceEntity("CAR_TXT_CIRCUIT17")
	HideInterfaceEntity("CAR_TXT_CIRCUIT18")
	HideInterfaceEntity("CAR_TXT_CIRCUIT19")
	HideInterfaceEntity("CAR_TXT_CIRCUIT20")
	HideInterfaceEntity("CAR_TXT_CIRCUIT21")

	HideInterfaceEntity("CAR_TXT_LOGOM3")
	HideInterfaceEntity("CAR_BT_ECRANTV01")

	Selected("CAR_BT_CHOIXACTIF01")
	HideInterfaceEntity("CAR_FlecheG")
	HideInterfaceEntity("CAR_FlecheD")
	
	OldTrckname = ""
	
	if GetGlobalVariable("Carlance") == 0 then
		StartPopupByScript("Popup",0, POPUP_STATE_CHOICE)
		SetGlobalVariable("GainCar",0)
		SetGlobalVariable("Carlance",1)
	else
		if GetGlobalVariable("NTrackCarriere") < 0 then
			if GetTrackState(MODE_CARRIERE) < 8 then
				SetGlobalVariable("NTrackCarriere", GetTrackState(MODE_CARRIERE)-1) 	
			else
				if GetGlobalVariable("CarriereGagne") == 2 then
					SetGlobalVariable("CarriereGagne",1) 
					if GetPodNameAtRank(1) == player then
						StartClock("CAR_TXT_INFODIVERSE",1,0)
						SetCSFlag(1)
					end
				end
--				HideInterfaceEntity("CAR_BT_ECRANTV")
			end
		end
		if (GetGlobalVariable("NTrackCarriere") > 0 and GetGlobalVariable("CarriereGagne") ~=1) then
			while GetGlobalVariable("NTrackCarriere") ~= GetUsedTrackIndex() do
				NextTrack()
			end
			SetGlobalVariable("NTrackCarriere", -1) 
		end
	end

end

-- Function 'Update'
function CAR_Fond:Update()
	

	if PushEsc()==1 then
		StopEsc()
		Selected("CAR_BT_BACK")
		LoadInterface("Menu_Principal")
	end

end

-- Function 'End'
function CAR_Fond:End()

end

function CAR_Fond:Popup(id,res)

	if id == 0 then
		if res == POPUP_CHOICE_1 then
			ResetCompetitorTab()
			AddPointTo(player,0)
			local value = GetText(671)
			AddPointTo(value,0)
			value = GetText(672)
			AddPointTo(value,0)
			value = GetText(673)
			AddPointTo(value,0)
			value = GetText(674)
			AddPointTo(value,0)
			value = GetText(675)
			AddPointTo(value,0)
			value = GetText(676)
			AddPointTo(value,0)
			value = GetText(677)
			AddPointTo(value,0)
			SortCompetitor()
			SetTrackState(MODE_CARRIERE, 1)
			SetGlobalVariable("CarriereGagne",0)
			SetCSMode(0)
		
		elseif (res == POPUP_CHOICE_2 and GetCSFlag() == 1) then
			ResetCompetitorTab()
			AddPointTo(player,0)
			local value = GetText(671)
			AddPointTo(value,0)
			value = GetText(672)
			AddPointTo(value,0)
			value = GetText(673)
			AddPointTo(value,0)
			value = GetText(674)
			AddPointTo(value,0)
			value = GetText(675)
			AddPointTo(value,0)
			value = GetText(676)
			AddPointTo(value,0)
			value = GetText(677)
			AddPointTo(value,0)
			SortCompetitor()
			SetTrackState(MODE_CARRIERE, 1)
			SetGlobalVariable("CarriereGagne",0)
			SetCSMode(1)

		else
			if GetGlobalVariable("NTrackCarriere") < 0 then
				SetGlobalVariable("NTrackCarriere", GetTrackState(MODE_CARRIERE)-1) 	
			end
			if GetGlobalVariable("NTrackCarriere") > 0 then
				while GetGlobalVariable("NTrackCarriere") ~= GetUsedTrackIndex() do
					NextTrack()
				end
				SetGlobalVariable("NTrackCarriere", -1) 
			end
		end



	end

end
