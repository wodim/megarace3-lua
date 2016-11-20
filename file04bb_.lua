STM1_Fond={}


tabres1 = {rank,name,time,kill,coul}

-- Function 'Init'
function STM1_Fond:Init()

	PrintDebug("TRUC DE MERDE QUI VAUTRE :")
	PrintDebug(GetGameMode())
	ChargeSon("MenuAPP")
	ChargeSon("MenuHB")
	ChargeSon("MenuGD")
	ChargeSon("MenuVAL")
	ChargeSon("MenuIMP")
	ChargeSon("MenuPOP")
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	JoueFluxMusique("InterfaceMenu", 0, TRUE)
	JoueSon2DNoInst("MenuAPP",0,-1)

	ChangeTexture("CURRENT","Fond","statmulti")

	LoadEntityAnim("STM1_ANI_Fond","logo")
	StartEntityAnim("STM1_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("STM1_TXT_GRDTITRE")
	HideInterfaceEntity("STM1_TXT_PETTITRE")
	HideInterfaceEntity("STM1_BT_NOMJOUEUR")



	HideInterfaceEntity("STM1_choix_stat01")
	HideInterfaceEntity("STM1_choix_stat02")
	HideInterfaceEntity("STM1_choix_stat03")
	HideInterfaceEntity("STM1_choix_stat04")
	HideInterfaceEntity("STM1_choix_stat05")
	HideInterfaceEntity("STM1_choix_stat06")
	HideInterfaceEntity("STM1_choix_stat07")
	HideInterfaceEntity("STM1_choix_stat08")
	HideInterfaceEntity("STM1_choix_stat09")
	HideInterfaceEntity("STM1_choix_stat10")


	HideInterfaceEntity("STM1_titretablo")
	HideInterfaceEntity("STM1_rank")
	HideInterfaceEntity("STM1_nom_joueur")
	HideInterfaceEntity("STM1_time")
	HideInterfaceEntity("STM1_shoot")
	HideInterfaceEntity("STM1_rank01")
	HideInterfaceEntity("STM1_nom_joueur01")
	HideInterfaceEntity("STM1_time01")
	HideInterfaceEntity("STM1_shoot01")
	HideInterfaceEntity("STM1_rank02")
	HideInterfaceEntity("STM1_nom_joueur02")
	HideInterfaceEntity("STM1_time02")
	HideInterfaceEntity("STM1_shoot02")
	HideInterfaceEntity("STM1_rank03")
	HideInterfaceEntity("STM1_nom_joueur03")
	HideInterfaceEntity("STM1_time03")
	HideInterfaceEntity("STM1_shoot03")
	HideInterfaceEntity("STM1_rank04")
	HideInterfaceEntity("STM1_nom_joueur04")
	HideInterfaceEntity("STM1_time04")
	HideInterfaceEntity("STM1_shoot04")
	HideInterfaceEntity("STM1_rank05")
	HideInterfaceEntity("STM1_nom_joueur05")
	HideInterfaceEntity("STM1_time05")
	HideInterfaceEntity("STM1_shoot05")
	HideInterfaceEntity("STM1_rank06")
	HideInterfaceEntity("STM1_nom_joueur06")
	HideInterfaceEntity("STM1_time06")
	HideInterfaceEntity("STM1_shoot06")
	HideInterfaceEntity("STM1_rank07")
	HideInterfaceEntity("STM1_nom_joueur07")
	HideInterfaceEntity("STM1_time07")
	HideInterfaceEntity("STM1_shoot07")
	HideInterfaceEntity("STM1_rank08")
	HideInterfaceEntity("STM1_nom_joueur08")
	HideInterfaceEntity("STM1_time08")
	HideInterfaceEntity("STM1_shoot08")


	HideInterfaceEntity("STM1_spin_letter")
	HideInterfaceEntity("STM1_loop_letter")
	HideInterfaceEntity("STM1_shield_letter")
	HideInterfaceEntity("STM1_shoot_letter")
	HideInterfaceEntity("STM1_dep_letter")


	local nomtrck
	local gm	= GetGameMode()
	player = GetPlayerName()

	local r = getFirstResult()
	PrintDebug(r)
	local i = 1
	while r~=0 and i <= 8 do
		if ((gm == 7) or (gm == 8) or (gm ==11) or (gm==12)) then
			tabres1[i] = {rank = i,name = getResultPlayerName(),time = getResultTime() ,kill = getResultFrags(), coul = getResultPlayerTeam()}
		else
			tabres1[i] = {rank = i,name = getResultPlayerName(),time = getResultTimeFlag() ,kill = getResultFrags(),coul = getResultPlayerTeam()}
		end
		i = i + 1
		r = getNextResult()
		PrintDebug(r)
	end



end

-- Function 'Update'
function STM1_Fond:Update()

	if mustLeaveNetGame() == 1 then
		if isGameMaster() == FALSE then
			terminateNetworkGame()
			terminateNetwork()
			SetGlobalVariable("ServerDropped",1)
			LoadInterface("Menu_Multi")
		end
	end


	local i = 1
	while tabres1[i] ~= nil and i <= 8 do
		PrintStringOn("STM1_rank0"..i ,tabres1[i].rank , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres1[i].coul].r1 , S_Resmul[tabres1[i].coul].v1 ,S_Resmul[tabres1[i].coul].b1 ,S_Resmul[tabres1[i].coul].a1 ,S_Resmul[tabres1[i].coul].r2 ,S_Resmul[tabres1[i].coul].v2 ,S_Resmul[tabres1[i].coul].b2 ,S_Resmul[tabres1[i].coul].a2)
		PrintStringOn("STM1_nom_joueur0"..i ,tabres1[i].name , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres1[i].coul].r1 , S_Resmul[tabres1[i].coul].v1 ,S_Resmul[tabres1[i].coul].b1 ,S_Resmul[tabres1[i].coul].a1 ,S_Resmul[tabres1[i].coul].r2 ,S_Resmul[tabres1[i].coul].v2 ,S_Resmul[tabres1[i].coul].b2 ,S_Resmul[tabres1[i].coul].a2)
		PrintStringOn("STM1_time0"..i ,tabres1[i].time , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres1[i].coul].r1 , S_Resmul[tabres1[i].coul].v1 ,S_Resmul[tabres1[i].coul].b1 ,S_Resmul[tabres1[i].coul].a1 ,S_Resmul[tabres1[i].coul].r2 ,S_Resmul[tabres1[i].coul].v2 ,S_Resmul[tabres1[i].coul].b2 ,S_Resmul[tabres1[i].coul].a2)
		PrintStringOn("STM1_shoot0"..i ,tabres1[i].kill , S_FONTE, S_MUPF,"CENTER" , S_Resmul[tabres1[i].coul].r1 , S_Resmul[tabres1[i].coul].v1 ,S_Resmul[tabres1[i].coul].b1 ,S_Resmul[tabres1[i].coul].a1 ,S_Resmul[tabres1[i].coul].r2 ,S_Resmul[tabres1[i].coul].v2 ,S_Resmul[tabres1[i].coul].b2 ,S_Resmul[tabres1[i].coul].a2)
		i = i + 1
	end

		local gm	= GetGameMode()

		PrintTextOn("STM1_nom_joueur" ,84 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		if ((gm == 7) or (gm == 8) or (gm ==11) or (gm==12)) then
			PrintTextOn("STM1_time" ,25 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		else
			PrintTextOn("STM1_time" ,730 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		end
		PrintTextOn("STM1_shoot" ,740 , S_FONTE, S_MUPF,"CENTER" , S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)


		value = GetText(360).." "..GetPodStat(GetNamePlayer1(), STAT_MAX_SPEED).." nmh"
		PrintStringOn("STM1_choix_stat02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(361).." "..GetPodStat(GetNamePlayer1(), STAT_AVERAGE_SPEED).." nmh"
		PrintStringOn("STM1_choix_stat03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(362).." "..GetPodStat(GetNamePlayer1(), STAT_FAST_TIME_LAP).." ns"
		PrintStringOn("STM1_choix_stat04", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat(GetNamePlayer1(), STAT_ATT_MOD_TIME)
		value = value.." % "..GetText(363)
		PrintStringOn("STM1_choix_stat05", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat(GetNamePlayer1(), STAT_DEF_MOD_TIME)
		value = value.." % "..GetText(364)
		PrintStringOn("STM1_choix_stat06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat(GetNamePlayer1(), STAT_VIT_MOD_TIME)
		value = value.." % "..GetText(365)
		PrintStringOn("STM1_choix_stat07", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(366).." "..GetPodStat(GetNamePlayer1(), STAT_SHOT_NUM)
		PrintStringOn("STM1_choix_stat08", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(367).." "..GetPodStat(GetNamePlayer1(), STAT_SEC_BONUS_NUM)
		PrintStringOn("STM1_choix_stat09", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetBonusNegNum(GetNamePlayer1(), BN_NO_TURN) + GetBonusNegNum(GetNamePlayer1(), BN_TOP_SPEED) + GetBonusNegNum(GetNamePlayer1(), BN_BLIND) + GetBonusNegNum(GetNamePlayer1(), BN_BLOCK_MODULE) + GetBonusNegNum(GetNamePlayer1(), BN_INVERSE_COMMAND) + GetBonusNegNum(GetNamePlayer1(), BN_STEAL)
		value = GetText(368).." "..value
		PrintStringOn("STM1_choix_stat10", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetBonusPlusNum(GetNamePlayer1(), BP_SPIN)
		PrintStringOn("STM1_spin_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum(GetNamePlayer1(), BP_LOOP)
		PrintStringOn("STM1_loop_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum(GetNamePlayer1(), BP_USEFUL_SHIELD)
		PrintStringOn("STM1_shield_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum(GetNamePlayer1(), BP_SHOOT)
		PrintStringOn("STM1_shoot_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum(GetNamePlayer1(), BP_OVERTAKING)
		PrintStringOn("STM1_dep_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)


	if PushEnter() == 1 then
		StopEnter()
		if (PlayerWin() == 1 ) then
			local gm = GetGameMode()
			if ((isNetGameMultiRaces() > 1) or  ((gm == 8) or (gm == 9) or (gm == 12) or (gm == 13))) then 
				LoadInterface("Menu_MulStat2")
			else
				terminateNetworkGame()
				terminateNetwork()
				LoadInterface("Menu_Multi")
			end
		else
			terminateNetworkGame()
			terminateNetwork()
			LoadInterface("Menu_Multi")
		end
	end

	
end

-- Function 'End'
function STM1_Fond:End()
end

function STM1_Fond:Clock(Id)
end

function STM1_Fond:Popup(id, res)
end
