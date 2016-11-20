PRA_res_Fond={}

-- Function 'Init'
function PRA_res_Fond:Init()

	ChargeSon("MenuAPP")
	ChargeSon("MenuHB")
	ChargeSon("MenuGD")
	ChargeSon("MenuVAL")
	ChargeSon("MenuIMP")
	ChargeSon("MenuPOP")

	JoueFluxMusique("InterfaceMenu", 0, TRUE)
	JoueSon2DNoInst("MenuAPP", 0,-1)

	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	LoadEntityAnim("PRA_ANI_Fond","logo")
	StartEntityAnim("PRA_ANI_Fond","logo",1,-1,1)
	player = GetPlayerName()

	ChangeTexture("CURRENT","Fond","ctrl")
	ChangeTexture("PRA_excelentbronze","excelentbronze","bronze02")
	ChangeTexture("PRA_excelentargent","excelentargent","argent02")
	ChangeTexture("PRA_excelentor","excelentrookie","or02")

	HideInterfaceEntity("PRA_choice01")
	HideInterfaceEntity("PRA_choice02")
	HideInterfaceEntity("PRA_choice03")

	HideInterfaceEntity("PRA_BT_SELECT")

	HideInterfaceEntity("PRAres_BT_BACK")
	HideInterfaceEntity("PRAres_BT_BACK01")
	
	HideInterfaceEntity("PRAR_TXT_GRDTITRE")
	HideInterfaceEntity("PRAR_TXT_PETTITRE")

	HideInterfaceEntity("PRAR_TXT_INFODIVERSE")

	HideInterfaceEntity("PRAR_TXT_LOGOM3")

	SetGlobalVariable("gAskToSave", TRUE)
	SetGlobalVariable("gCallSaveMenu", TRUE)
	SetGlobalVariable("gOnlyGameData", FALSE)
	SetGlobalVariable("gPlayerDataToo", FALSE)

	if PlayerWin() == 1 then
		if GetGlobalVariable("PracticeNivo")  == 0 then
			HideInterfaceEntity("PRA_excelentargent") 
			HideInterfaceEntity("PRA_excelentor") 
		elseif GetGlobalVariable("PracticeNivo")  == 1 then
			HideInterfaceEntity("PRA_excelentbronze") 
			HideInterfaceEntity("PRA_excelentor") 

		else
			HideInterfaceEntity("PRA_excelentargent") 
			HideInterfaceEntity("PRA_excelentbronze") 

		end
	else
		HideInterfaceEntity("PRA_excelentbronze") 
		HideInterfaceEntity("PRA_excelentargent") 
		HideInterfaceEntity("PRA_excelentor") 
	end

	if GetGlobalVariable("PracticeNivo") == 0 then
		if GetGlobalVariable("Practiceok") == 0 and GetPracticeDifficultyResult(0) == 1 then
			SetGlobalVariable("Practiceok",1)
			SetTrackState(MODE_ARCADE, 1)
			SetTrackState(MODE_CATASTROPHE, 1)
			StartClock("PRAR_TXT_INFODIVERSE",0,0)
		end
	end
end

-- Function 'Update'
function PRA_res_Fond:Update()
	
	PrintTextOn("PRA_choice01", 350 + GetGlobalVariable("PracticeTyp"), S_FONTE, S_GF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	local value = ""
	if GetGlobalVariable("PracticeTyp") == 2 then
		value = GetText(357).." "..GetPodStat("Player1", STAT_FAST_TIME_LAP).."\n"
	end
	value = value..GetText(337 + GetGlobalVariable("PracticeTyp") * 2 + PlayerWin())
	PrintStringOn("PRA_choice02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	if PlayerWin() == 0 then
		value = GetText(343)
	else
		value = GetText(346 - GetGlobalVariable("PracticeTyp")).." "..GetText(347 + GetGlobalVariable("PracticeNivo"))
	end
	PrintStringOn("PRA_choice03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)


	if PushEnter() == 1 then
		StopEnter()
		Selected("PRA_BT_SELECT")
		LoadInterface("Menu_Practice")
	end
end

-- Function 'End'
function PRA_res_Fond:End()
end
