STM2_Fond={value1,value2}

tabres2 = {rank,name,time,kill,coul}

-- Function 'Init'
function STM2_Fond:Init()

	ChargeSon("MenuAPP")
	ChargeSon("MenuHB")
	ChargeSon("MenuGD")
	ChargeSon("MenuVAL")
	ChargeSon("MenuIMP")
	ChargeSon("MenuPOP")
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	JoueSon2DNoInst("MenuAPP",0,-1)

	ChangeTexture("CURRENT","Fond","statmulti")

	LoadEntityAnim("STM2_ANI_Fond","logo")
	StartEntityAnim("STM2_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("STM2_TXT_GRDTITRE")
	HideInterfaceEntity("STM2_TXT_PETTITRE")
	HideInterfaceEntity("STM2_BT_NOMJOUEUR")


	HideInterfaceEntity("STM2_choix_stat01")
	HideInterfaceEntity("STM2_choix_stat02")
	HideInterfaceEntity("STM2_choix_stat03")
	HideInterfaceEntity("STM2_choix_stat04")
	HideInterfaceEntity("STM2_choix_stat05")
	HideInterfaceEntity("STM2_choix_stat06")
	HideInterfaceEntity("STM2_choix_stat07")
	HideInterfaceEntity("STM2_choix_stat08")
	HideInterfaceEntity("STM2_choix_stat09")
	HideInterfaceEntity("STM2_choix_stat10")
	HideInterfaceEntity("STM2_choix_stat11")

	HideInterfaceEntity("STM2_titretablo")
	HideInterfaceEntity("STM2_rank")
	HideInterfaceEntity("STM2_nom_joueur")
	HideInterfaceEntity("STM2_time")
	HideInterfaceEntity("STM2_shoot")
	HideInterfaceEntity("STM2_rank01")
	HideInterfaceEntity("STM2_nom_joueur01")
	HideInterfaceEntity("STM2_time01")
	HideInterfaceEntity("STM2_shoot01")
	HideInterfaceEntity("STM2_rank02")
	HideInterfaceEntity("STM2_nom_joueur02")
	HideInterfaceEntity("STM2_time02")
	HideInterfaceEntity("STM2_shoot02")
	HideInterfaceEntity("STM2_rank03")
	HideInterfaceEntity("STM2_nom_joueur03")
	HideInterfaceEntity("STM2_time03")
	HideInterfaceEntity("STM2_shoot03")
	HideInterfaceEntity("STM2_rank04")
	HideInterfaceEntity("STM2_nom_joueur04")
	HideInterfaceEntity("STM2_time04")
	HideInterfaceEntity("STM2_shoot04")
	HideInterfaceEntity("STM2_rank05")
	HideInterfaceEntity("STM2_nom_joueur05")
	HideInterfaceEntity("STM2_time05")
	HideInterfaceEntity("STM2_shoot05")
	HideInterfaceEntity("STM2_rank06")
	HideInterfaceEntity("STM2_nom_joueur06")
	HideInterfaceEntity("STM2_time06")
	HideInterfaceEntity("STM2_shoot06")
	HideInterfaceEntity("STM2_rank07")
	HideInterfaceEntity("STM2_nom_joueur07")
	HideInterfaceEntity("STM2_time07")
	HideInterfaceEntity("STM2_shoot07")
	HideInterfaceEntity("STM2_rank08")
	HideInterfaceEntity("STM2_nom_joueur08")
	HideInterfaceEntity("STM2_time08")
	HideInterfaceEntity("STM2_shoot08")


	HideInterfaceEntity("STM2_spin_letter")
	HideInterfaceEntity("STM2_loop_letter")
	HideInterfaceEntity("STM2_shield_letter")
	HideInterfaceEntity("STM2_shoot_letter")
	HideInterfaceEntity("STM2_dep_letter")


	local nomtrck
	local gm	= GetGameMode()
	player = GetPlayerName()

	PrintDebug(isNetGameMultiRaces())
	PrintDebug(getNetRace())

	local i = 1
	getFirstTotalResult()
	while r~=0 and i <= 8 do
		if ((gm == 7) or (gm == 8) or (gm ==11) or (gm==12)) then
			tabres2[i] = {rank = i,name = getResultPlayerName(),time = getResultTotalTime() ,kill = getResultTotalFrags(), coul = getResultPlayerTeam()}
		else
				tabres2[i] = {rank = i,name = getResultPlayerName(),time = getResultTotalTimeFlag() ,kill = getResultTotalFrags(), coul = getResultPlayerTeam()}
		end
		i = i + 1
		r = getNextTotalResult()
		PrintDebug(r)
	end

	if (gm == 8) or (gm == 9) or (gm == 12) or (gm == 13) then
		if gm == 9 or gm == 13 then
			self.value1 = getResultTeamTimeFlag(2)
			self.value2 = getResultTeamTimeFlag(1)
		else
			self.value1 = getResultTeamTime(2)
			self.value2 = getResultTeamTime(1)
		end
	end
end

-- Function 'Update'
function STM2_Fond:Update()

	if mustLeaveNetGame() == 1 then
		if isGameMaster() == FALSE then
			terminateNetworkGame()
			terminateNetwork()
			SetGlobalVariable("ServerDropped",1)
			LoadInterface("Menu_Multi")
		end
	end

	local gm	= GetGameMode()

	PrintTextOn("STM2_nom_joueur" ,84 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	if ((gm == 7) or (gm == 8) or (gm ==11) or (gm==12)) then
		PrintTextOn("STM2_time" ,25 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	else
		PrintTextOn("STM2_time" ,730 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	end
	PrintTextOn("STM2_shoot" ,740 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)

	local i = 1
	while tabres2[i] ~= nil and i <= 8 do
		PrintStringOn("STM2_rank0"..i ,tabres2[i].rank , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres2[i].coul].r1 , S_Resmul[tabres2[i].coul].v1 ,S_Resmul[tabres2[i].coul].b1 ,S_Resmul[tabres2[i].coul].a1 ,S_Resmul[tabres2[i].coul].r2 ,S_Resmul[tabres2[i].coul].v2 ,S_Resmul[tabres2[i].coul].b2 ,S_Resmul[tabres2[i].coul].a2)
		PrintStringOn("STM2_nom_joueur0"..i ,tabres2[i].name , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres2[i].coul].r1 , S_Resmul[tabres2[i].coul].v1 ,S_Resmul[tabres2[i].coul].b1 ,S_Resmul[tabres2[i].coul].a1 ,S_Resmul[tabres2[i].coul].r2 ,S_Resmul[tabres2[i].coul].v2 ,S_Resmul[tabres2[i].coul].b2 ,S_Resmul[tabres2[i].coul].a2)
		PrintStringOn("STM2_time0"..i ,tabres2[i].time , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres2[i].coul].r1 , S_Resmul[tabres2[i].coul].v1 ,S_Resmul[tabres2[i].coul].b1 ,S_Resmul[tabres2[i].coul].a1 ,S_Resmul[tabres2[i].coul].r2 ,S_Resmul[tabres2[i].coul].v2 ,S_Resmul[tabres2[i].coul].b2 ,S_Resmul[tabres2[i].coul].a2)
		PrintStringOn("STM2_shoot0"..i ,tabres2[i].kill , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres2[i].coul].r1 , S_Resmul[tabres2[i].coul].v1 ,S_Resmul[tabres2[i].coul].b1 ,S_Resmul[tabres2[i].coul].a1 ,S_Resmul[tabres2[i].coul].r2 ,S_Resmul[tabres2[i].coul].v2 ,S_Resmul[tabres2[i].coul].b2 ,S_Resmul[tabres2[i].coul].a2)
		i = i + 1
	end


	if (gm == 8) or (gm == 9) or (gm == 12) or (gm == 13) then
		local value = GetText(738)
		PrintStringOn("STM2_choix_stat03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintStringOn("STM2_choix_stat04", self.value1, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(739)
		PrintStringOn("STM2_choix_stat06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintStringOn("STM2_choix_stat07", self.value2, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		if getWinTeam() == 1 then
			value = GetText(732)
		elseif getWinTeam() == 2 then
			value = GetText(731)
		elseif getWinTeam() == 0 then
			value = GetText(735)
		end
		PrintStringOn("STM2_choix_stat09", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushEnter() == 1 then
		StopEnter()
		if isNetGameMultiRaces() >= getNetRace() + 1 then
			LoadInterface("Menu_multiwait")
		else
			terminateNetworkGame()
			terminateNetwork()
			LoadInterface("Menu_Multi")
		end
	end

	
end

-- Function 'End'
function STM2_Fond:End()
end

function STM2_Fond:Clock(Id)
end

function STM2_Fond:Popup(id, res)
end
