ARC_Fond={balade}

-- Function 'Init'
function ARC_Fond:Init()
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	OldTrckname = ""

	JoueSon2DNoInst("MenuAPP", 0,-1)

	LoadEntityAnim("ARC_ANI_Fond","logo")
	StartEntityAnim("ARC_ANI_Fond","logo",1,-1,1)

	ChangeTexture("CURRENT","Fond","interfaceok")

	HideInterfaceEntity("ARC_TXT_GRDTITRE")
	HideInterfaceEntity("ARC_TXT_PETTITRE")
	HideInterfaceEntity("ARC_TXT_NOMJOUEUR")

	HideInterfaceEntity("ARC_BT_SELECT")

	HideInterfaceEntity("ARC_BT_BACK")

	HideInterfaceEntity("ARC_BT_CHOIXACTIF01")
	HideInterfaceEntity("ARC_BT_CHOIXACTIF02")

	HideInterfaceEntity("ARC_TXT_GDTITRE")
	HideInterfaceEntity("ARC_TXT_NOM_INFO")
	HideInterfaceEntity("ARC_TXT_ECRANINFO")
	HideInterfaceEntity("ARC_TXT_INFODIVERSE")
--	HideInterfaceEntity("ARC_TXT_INFOTRACK")
	HideInterfaceEntity("ARC_TXT_circuit01")
	HideInterfaceEntity("ARC_TXT_CIRCUIT02")
	HideInterfaceEntity("ARC_TXT_CIRCUIT03")
	HideInterfaceEntity("ARC_TXT_CIRCUIT04")
	HideInterfaceEntity("ARC_TXT_CIRCUIT05")
	HideInterfaceEntity("ARC_TXT_CIRCUIT06")
	HideInterfaceEntity("ARC_TXT_CIRCUIT07")
	HideInterfaceEntity("ARC_TXT_CIRCUIT08")
	HideInterfaceEntity("ARC_TXT_CIRCUIT09")
	HideInterfaceEntity("ARC_TXT_CIRCUIT10")
	HideInterfaceEntity("ARC_TXT_CIRCUIT11")
	HideInterfaceEntity("ARC_TXT_CIRCUIT12")

	HideInterfaceEntity("ARC_TXT_LOGOM3")
--	HideInterfaceEntity("ARC_BT_ECRANTV")
	HideInterfaceEntity("ARC_BT_ECRANTV01")
	
	local v1 = GetGameMode()
	local v2 = GetTrackState(v1)
	PrintDebug(v1)
	PrintDebug(v2)
	PrintDebug("Et merde")

	if v2 < 8 then

		HideInterfaceEntity("ARC_FlecheG")
		HideInterfaceEntity("ARC_FlecheD")
		self.balade = 0
	else
		self.balade = 1
	end

	if GetGlobalVariable("NTrackArcade") > 0 then
		while GetGlobalVariable("NTrackArcade") ~= GetUsedTrackIndex() do
			NextTrack()
		end
		SetGlobalVariable("NTrackArcade", -1)
	end

	Selected("ARC_BT_CHOIXACTIF01")
end

-- Function 'Update'
function ARC_Fond:Update()
	
	local ntrck = GetUsedTrackName()


	if PushEsc()==1 then
		StopEsc()
		Selected("ARC_BT_BACK")
		LoadInterface("Menu_Principal")
	end

end

-- Function 'End'
function ARC_Fond:End()

end
