CMU_Fond={}



	ngametitle = ""
	nnbmaxpla = ""
	ngamemod = ""
	ngameismult = ""
	npl1 = ""
	npl1name = ""
	npl1state = ""
	npl2 = ""
	npl2name = ""
	npl2state = ""
	npl3 = ""
	npl3name = ""
	npl3state = ""
	npl4 = ""
	npl4name = ""
	npl4state = ""
	npl5 = ""
	npl5name = ""
	npl5state = ""
	npl6 = "" 
	npl6name = ""
	npl6state = ""
	npl7 = ""
	npl7name = ""
	npl7state = ""
	npl8 = ""
	npl8name = ""
	npl8state = ""
	ngametime = ""
	ngamebonus = ""
	ngameFF = ""
	ngamettrck = ""
	cpl1 = 0
	cpl2 = 0
	cpl3 = 0
	cpl4 = 0
	cpl5 = 0
	cpl6 = 0
	cpl7 = 0
	cpl8 = 0


	CMU_TIME_DELAY_FLASHING = 400
	CMU_MAX_CHAR = 60

	cmuLentghPlayerName = 0
	cmuChatLine = ""
	cmuIsChatOn = FALSE
	cmuL1 = -1
	cmuPrintLineNum = 4
	cmuClock = clone(LUACLOCK)
	cmuFlashing = FALSE
	cmuDraw = TRUE

-- Function 'Init'
function CMU_Fond:Init()

	PrintDebug("TRUC DE MERDE QUI VAUTRE :")
	PrintDebug(GetGameMode())

	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	ChangeTexture("CURRENT","Fond","map_cmu")

	LoadEntityAnim("CMU_ANI_Fond","logo")
	StartEntityAnim("CMU_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("CMU_BT_SELECT")
	HideInterfaceEntity("CMU_BT_BACK")
	HideInterfaceEntity("CMU_TXT_GRDTITRE")
	HideInterfaceEntity("CMU_TXT_PETTITRE")
	HideInterfaceEntity("CMU_BT_NOMJOUEUR")

	HideInterfaceEntity("CMU_TXT_INFODIVERSE")
	HideInterfaceEntity("CMU_nomsession")
	HideInterfaceEntity("CMU_nomtrack")
	HideInterfaceEntity("CMU_nombredejoueur")
	HideInterfaceEntity("CMU_nombre")
	HideInterfaceEntity("CMU_password")
	HideInterfaceEntity("CMU_mode")
	HideInterfaceEntity("CMU_Create")
	HideInterfaceEntity("CMU_opt1")
	HideInterfaceEntity("CMU_opt2")
	HideInterfaceEntity("CMU_opt03")
	HideInterfaceEntity("CMU_Team")

	HideInterfaceEntity("CMU_nbcourse")
	HideInterfaceEntity("CMU_nbcourse01")
	HideInterfaceEntity("CMU_player01")
	HideInterfaceEntity("CMU_player02")
	HideInterfaceEntity("CMU_player03")
	HideInterfaceEntity("CMU_player04")
	HideInterfaceEntity("CMU_player05")
	HideInterfaceEntity("CMU_player06")
	HideInterfaceEntity("CMU_player07")
	HideInterfaceEntity("CMU_player08")
	HideInterfaceEntity("CMU_player09")
	HideInterfaceEntity("CMU_etat01")
	HideInterfaceEntity("CMU_etat02")
	HideInterfaceEntity("CMU_etat03")
	HideInterfaceEntity("CMU_etat04")
	HideInterfaceEntity("CMU_etat05")
	HideInterfaceEntity("CMU_etat06")
	HideInterfaceEntity("CMU_etat07")
	HideInterfaceEntity("CMU_etat08")
	HideInterfaceEntity("CMU_etat09")
	HideInterfaceEntity("CMU_nbr01")
	HideInterfaceEntity("CMU_nbr02")
	HideInterfaceEntity("CMU_nbr03")
	HideInterfaceEntity("CMU_nbr04")
	HideInterfaceEntity("CMU_nbr05")
	HideInterfaceEntity("CMU_nbr06")
	HideInterfaceEntity("CMU_nbr07")
	HideInterfaceEntity("CMU_nbr08")
	HideInterfaceEntity("CMU_nbr09")

	HideInterfaceEntity("CMU_LINE_CHAT_01")
	HideInterfaceEntity("CMU_LINE_CHAT_02")
	HideInterfaceEntity("CMU_LINE_CHAT_03")
	HideInterfaceEntity("CMU_LINE_CHAT_04")
	HideInterfaceEntity("CMU_LINE_CHAT_05")
	HideInterfaceEntity("CMU_PROMPT_CHAT")

	local ngametyp = getNetGameType()
	if ngametyp == "SOLO" then
		Selected("CMU_password")
	elseif ngametyp == "TEAM" then
		Selected("CMU_Team")
	elseif ngametyp == "FLAG" then
		Selected("CMU_Team")
	elseif ngametyp == "FOX" then
		Selected("CMU_password")
	end	

	getFirstPlayer()
	cpl1 = getPlayerTeam()

	if GetGlobalVariable("PodSelected") == 1 then
		Selected("CMU_Create")
	else
		SetGlobalVariable("PodSelected",0)
	end

	cmuLentghPlayerName = 0
	local pn = GetPlayerName()
	if pn~=nil then
		cmuLentghPlayerName = strlen(pn)
	end

end

-- Function 'Update'
function CMU_Fond:Update()
	
	local value = nil
	
	getFirstPlayer()
	if npl1state == 3 then
	if getPlayerState() == 0 then
		npl1name = getPlayerName()
		npl1state = getPlayerState()
		if npl1state == 0 then
			ChangeTexture("CMU_etat02","etat","orange")
		elseif npl1state == 1 then
			ChangeTexture("CMU_etat02","etat","vert")
		elseif npl1state == 2 then
			ChangeTexture("CMU_etat02","etat","vert")
		else
			ChangeTexture("CMU_etat02","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl2state == 3 then
	if getPlayerState() == 0 then
		npl2name = getPlayerName()
		npl2state = getPlayerState()
		if npl2state == 0 then
			ChangeTexture("CMU_etat03","etat","orange")
		elseif npl2state == 1 then
			ChangeTexture("CMU_etat03","etat","vert")
		elseif npl2state == 2 then
			ChangeTexture("CMU_etat03","etat","vert")
		else
			ChangeTexture("CMU_etat03","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl3state == 3 then
	if getPlayerState() == 0 then
		npl3name = getPlayerName()
		npl3state = getPlayerState()
		if npl3state == 0 then
			ChangeTexture("CMU_etat04","etat","orange")
		elseif npl3state == 1 then
			ChangeTexture("CMU_etat04","etat","vert")
		elseif npl3state == 2 then
			ChangeTexture("CMU_etat04","etat","vert")
		else
			ChangeTexture("CMU_etat04","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl4state == 3 then
	if getPlayerState() == 0 then
		npl4name = getPlayerName()
		npl4state = getPlayerState()
		if npl4state == 0 then
			ChangeTexture("CMU_etat05","etat","orange")
		elseif npl4state == 1 then
			ChangeTexture("CMU_etat05","etat","vert")
		elseif npl4state == 2 then
			ChangeTexture("CMU_etat05","etat","vert")
		else
			ChangeTexture("CMU_etat05","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl5state == 3 then
	if getPlayerState() == 0 then
		npl5name = getPlayerName()
		npl5state = getPlayerState()
		if npl5state == 0 then
			ChangeTexture("CMU_etat06","etat","orange")
		elseif npl5state == 1 then
			ChangeTexture("CMU_etat06","etat","vert")
		elseif npl5state == 2 then
			ChangeTexture("CMU_etat06","etat","vert")
		else
			ChangeTexture("CMU_etat06","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl6state == 3 then
	if getPlayerState() == 0 then
		npl6name = getPlayerName()
		npl6state = getPlayerState()
		if npl6state == 0 then
			ChangeTexture("CMU_etat07","etat","orange")
		elseif npl6state == 1 then
			ChangeTexture("CMU_etat07","etat","vert")
		elseif npl6state == 2 then
			ChangeTexture("CMU_etat07","etat","vert")
		else
			ChangeTexture("CMU_etat07","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl7state == 3 then
	if getPlayerState() == 0 then
		npl7name = getPlayerName()
		npl7state = getPlayerState()
		if npl7state == 0 then
			ChangeTexture("CMU_etat08","etat","orange")
		elseif npl7state == 1 then
			ChangeTexture("CMU_etat08","etat","vert")
		elseif npl7state == 2 then
			ChangeTexture("CMU_etat08","etat","vert")
		else
			ChangeTexture("CMU_etat08","etat","rouge")
		end
	end
	end
	getNextPlayer()
	if npl8state == 3 then
	if getPlayerState() == 0 then
		npl8name = getPlayerName()
		npl8state = getPlayerState()
		if npl8state == 0 then
			ChangeTexture("CMU_etat09","etat","orange")
		elseif npl8state == 1 then
			ChangeTexture("CMU_etat09","etat","vert")
		elseif npl8state == 2 then
			ChangeTexture("CMU_etat09","etat","vert")
		else
			ChangeTexture("CMU_etat09","etat","rouge")
		end
	end
	end


	if needUpdate() == 1 then
		ngametitle = GetText(82).." : "..getNetGameTitle()
		nnbmaxpla = GetText(84).." : "..getNetNbMaxPlayers()
		LoadTrackInfo(getSomyRaceName())
		ngamettrck = GetText(83).." : "..GetTrackInfo(getSomyRaceName(), "Nom")
		local ngametyp = getNetGameType()
		if ngametyp == "SOLO" then
			ngametyp = GetText(154)
		elseif ngametyp == "TEAM" then
			ngametyp = GetText(155)
		elseif ngametyp == "FLAG" then
			ngametyp = GetText(156)
		elseif ngametyp == "FOX" then
			ngametyp = GetText(157)
		end
		ngamemod = getNetGameMode()
		if ngamemod == "ARCADE" then
			ngamemod = GetText(152).." / "..ngametyp
		elseif ngamemod == "CARRIERE" then
			ngamemod = GetText(153).." / "..ngametyp
		end
		local e = isNetGameMultiRaces()
		if e > 1 then
			local f = getNetRace()+1
			ngameismult = GetText(150).." ("..f.."/"..e..")"
		else
			ngameismult = GetText(149)
		end
		local gm = GetGameMode()
		if ((gm == 7) or (gm == 11) or (gm ==8) or (gm==12)) then
			ngametime = GetText(710)..getNetGameDuration()
		else
			ngametime = GetText(723)..getNetGameDuration()
		end

		if getNetGameIsBonus() == 0 then
			ngamebonus = GetText(722)..GetText(651)
		else
			ngamebonus = GetText(722)..GetText(650)
		end

		if getNetGameType() == "TEAM" or getNetGameType() == "FLAG"  then
			if getNetGameIsFF() == 0 then
				ngameFF = GetText(721)..GetText(651)
			else
				ngameFF = GetText(721)..GetText(650)
			end
		else
			ngameFF = ""
		end

		npl1 = getFirstPlayer()
		if npl1 ~= 0 then
			npl1name = getPlayerName()
			npl1state = getPlayerState()
			cpl1 = getPlayerTeam()
			if npl1state == 0 then
				ChangeTexture("CMU_etat02","etat","orange")
			elseif npl1state == 1 then
				ChangeTexture("CMU_etat02","etat","vert")
			elseif npl1state == 2 then
				ChangeTexture("CMU_etat02","etat","vert")
			else
				ChangeTexture("CMU_etat02","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat02")
		else
			HideInterfaceEntity("CMU_etat02")
		end
		npl2 = getNextPlayer()
		if npl2 ~= 0 then
			npl2name = getPlayerName()
			npl2state = getPlayerState()
			cpl2 = getPlayerTeam()
			if npl2state == 0 then
				ChangeTexture("CMU_etat03","etat","orange")
			elseif npl2state == 1 then
				ChangeTexture("CMU_etat03","etat","vert")
			elseif npl2state == 2 then
				ChangeTexture("CMU_etat03","etat","vert")
			else
				ChangeTexture("CMU_etat03","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat03")
		else
			HideInterfaceEntity("CMU_etat03")
			npl2name = ""
			npl2state = 0
		end
		npl3 = getNextPlayer()
		if npl3 ~= 0 then
			npl3name = getPlayerName()
			npl3state = getPlayerState()
			cpl3 = getPlayerTeam()
			if npl3state == 0 then
				ChangeTexture("CMU_etat04","etat","orange")
			elseif npl3state == 1 then
				ChangeTexture("CMU_etat04","etat","vert")
			elseif npl3state == 2 then
				ChangeTexture("CMU_etat04","etat","vert")
			else
				ChangeTexture("CMU_etat04","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat04")
		else
			HideInterfaceEntity("CMU_etat04")
			npl3name = 0
			npl3state = 0
		end
		npl4 = getNextPlayer()
		if npl4 ~= 0 then
			npl4name = getPlayerName()
			npl4state = getPlayerState()
			cpl4 = getPlayerTeam()
			if npl4state == 0 then
				ChangeTexture("CMU_etat05","etat","orange")
			elseif npl4state == 1 then
				ChangeTexture("CMU_etat05","etat","vert")
			elseif npl4state == 2 then
				ChangeTexture("CMU_etat05","etat","vert")
			else
				ChangeTexture("CMU_etat05","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat05")
		else
			npl4name = 0
			npl4state = 0
			HideInterfaceEntity("CMU_etat05")
		end
		npl5 = getNextPlayer()
		if npl5 ~= 0 then
			npl5name = getPlayerName()
			npl5state = getPlayerState()
			cpl5 = getPlayerTeam()
			if npl5state == 0 then
				ChangeTexture("CMU_etat06","etat","orange")
			elseif npl5state == 1 then
				ChangeTexture("CMU_etat06","etat","vert")
			elseif npl5state == 2 then
				ChangeTexture("CMU_etat06","etat","vert")
			else
				ChangeTexture("CMU_etat06","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat06")
		else
			HideInterfaceEntity("CMU_etat06")
			npl5name = 0
			npl5state = 0
		end
		npl6 = getNextPlayer()
		if npl6 ~= 0 then
			npl6name = getPlayerName()
			npl6state = getPlayerState()
			cpl6 = getPlayerTeam()
			if npl6state == 0 then
				ChangeTexture("CMU_etat07","etat","orange")
			elseif npl6state == 1 then
				ChangeTexture("CMU_etat07","etat","vert")
			elseif npl6state == 2 then
				ChangeTexture("CMU_etat07","etat","vert")
			else
				ChangeTexture("CMU_etat07","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat07")
		else
			HideInterfaceEntity("CMU_etat07")
			npl6name = 0
			npl6state = 0
		end
		npl7 = getNextPlayer()
		if npl7 ~= 0 then
			npl7name = getPlayerName()
			npl7state = getPlayerState()
			cpl7 = getPlayerTeam()
			if npl7state == 0 then
				ChangeTexture("CMU_etat08","etat","orange")
			elseif npl7state == 1 then
				ChangeTexture("CMU_etat08","etat","vert")
			elseif npl7state == 2 then
				ChangeTexture("CMU_etat08","etat","vert")
			else
				ChangeTexture("CMU_etat08","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat08")
		else
			HideInterfaceEntity("CMU_etat08")
			npl7name = 0
			npl7state = 0
		end
		npl8 = getNextPlayer()
		if npl8 ~= 0 then
			npl8name = getPlayerName()
			npl8state = getPlayerState()
			cpl8 = getPlayerTeam()
			if npl8state == 0 then
				ChangeTexture("CMU_etat09","etat","orange")
			elseif npl8state == 1 then
				ChangeTexture("CMU_etat09","etat","vert")
			elseif npl8state == 2 then
				ChangeTexture("CMU_etat09","etat","vert")
			else
				ChangeTexture("CMU_etat09","etat","rouge")
			end
			ShowInterfaceEntity("CMU_etat09")
		else
			HideInterfaceEntity("CMU_etat09")
			npl8name = 0
			npl8state = 0
		end
		updateDone()
	end
	
	PrintStringOn("CMU_nomsession" ,ngametitle , S_FONTE, S_MUPF,"LEFT"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_nomtrack" ,ngamettrck , S_FONTE, S_MUPF,"LEFT"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_nombre" ,nnbmaxpla , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
--	PrintStringOn("CMU_type",ngametyp , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_mode" ,ngamemod , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_nbcourse" ,ngameismult , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_opt1" ,ngametime , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_opt2" ,ngamebonus , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintStringOn("CMU_opt03" ,ngameFF , S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	PrintTextOn("CMU_player01" ,84 , S_FONTE, S_GF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)

	if npl1 ~= 0 then
		PrintStringOn("CMU_nbr02" ,"1"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl1].r1 , S_Resmul[cpl1].v1 ,S_Resmul[cpl1].b1 ,S_Resmul[cpl1].a1 ,S_Resmul[cpl1].r2 ,S_Resmul[cpl1].v2 ,S_Resmul[cpl1].b2 ,S_Resmul[cpl1].a2)
		PrintStringOn("CMU_player02" ,npl1name , S_FONTE, S_MUPF,"CENTER" , S_Resmul[cpl1].r1 , S_Resmul[cpl1].v1 ,S_Resmul[cpl1].b1 ,S_Resmul[cpl1].a1 ,S_Resmul[cpl1].r2 ,S_Resmul[cpl1].v2 ,S_Resmul[cpl1].b2 ,S_Resmul[cpl1].a2)
	end
	if npl2 ~= 0 then
		PrintStringOn("CMU_nbr03" ,"2"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl2].r1 , S_Resmul[cpl2].v1 ,S_Resmul[cpl2].b1 ,S_Resmul[cpl2].a1 ,S_Resmul[cpl2].r2 ,S_Resmul[cpl2].v2 ,S_Resmul[cpl2].b2 ,S_Resmul[cpl2].a2)
		PrintStringOn("CMU_player03" ,npl2name , S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl2].r1 , S_Resmul[cpl2].v1 ,S_Resmul[cpl2].b1 ,S_Resmul[cpl2].a1 ,S_Resmul[cpl2].r2 ,S_Resmul[cpl2].v2 ,S_Resmul[cpl2].b2 ,S_Resmul[cpl2].a2)
	end
	if npl3 ~= 0 then
		PrintStringOn("CMU_nbr04" ,"3"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl3].r1 , S_Resmul[cpl3].v1 ,S_Resmul[cpl3].b1 ,S_Resmul[cpl3].a1 ,S_Resmul[cpl3].r2 ,S_Resmul[cpl3].v2 ,S_Resmul[cpl3].b2 ,S_Resmul[cpl3].a2)
		PrintStringOn("CMU_player04" ,npl3name	, S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl3].r1 , S_Resmul[cpl3].v1 ,S_Resmul[cpl3].b1 ,S_Resmul[cpl3].a1 ,S_Resmul[cpl3].r2 ,S_Resmul[cpl3].v2 ,S_Resmul[cpl3].b2 ,S_Resmul[cpl3].a2)
	end
	if npl4 ~= 0 then
		PrintStringOn("CMU_nbr05" ,"4"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl4].r1 , S_Resmul[cpl4].v1 ,S_Resmul[cpl4].b1 ,S_Resmul[cpl4].a1 ,S_Resmul[cpl4].r2 ,S_Resmul[cpl4].v2 ,S_Resmul[cpl4].b2 ,S_Resmul[cpl4].a2)
		PrintStringOn("CMU_player05" ,npl4name	, S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl4].r1 , S_Resmul[cpl4].v1 ,S_Resmul[cpl4].b1 ,S_Resmul[cpl4].a1 ,S_Resmul[cpl4].r2 ,S_Resmul[cpl4].v2 ,S_Resmul[cpl4].b2 ,S_Resmul[cpl4].a2)
	end
	if npl5 ~= 0 then
		PrintStringOn("CMU_nbr06" ,"5"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl5].r1 , S_Resmul[cpl5].v1 ,S_Resmul[cpl5].b1 ,S_Resmul[cpl5].a1 ,S_Resmul[cpl5].r2 ,S_Resmul[cpl5].v2 ,S_Resmul[cpl5].b2 ,S_Resmul[cpl5].a2)
		PrintStringOn("CMU_player06" ,npl5name	, S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl5].r1 , S_Resmul[cpl5].v1 ,S_Resmul[cpl5].b1 ,S_Resmul[cpl5].a1 ,S_Resmul[cpl5].r2 ,S_Resmul[cpl5].v2 ,S_Resmul[cpl5].b2 ,S_Resmul[cpl5].a2)
	end
	if npl6 ~= 0 then
		PrintStringOn("CMU_nbr07" ,"6"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl6].r1 , S_Resmul[cpl6].v1 ,S_Resmul[cpl6].b1 ,S_Resmul[cpl6].a1 ,S_Resmul[cpl6].r2 ,S_Resmul[cpl6].v2 ,S_Resmul[cpl6].b2 ,S_Resmul[cpl6].a2)
		PrintStringOn("CMU_player07" ,npl6name	, S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl6].r1 , S_Resmul[cpl6].v1 ,S_Resmul[cpl6].b1 ,S_Resmul[cpl6].a1 ,S_Resmul[cpl6].r2 ,S_Resmul[cpl6].v2 ,S_Resmul[cpl6].b2 ,S_Resmul[cpl6].a2)
	end
	if npl7 ~= 0 then
		PrintStringOn("CMU_nbr08" ,"7"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl7].r1 , S_Resmul[cpl7].v1 ,S_Resmul[cpl7].b1 ,S_Resmul[cpl7].a1 ,S_Resmul[cpl7].r2 ,S_Resmul[cpl7].v2 ,S_Resmul[cpl7].b2 ,S_Resmul[cpl7].a2)
		PrintStringOn("CMU_player08" ,npl7name	, S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl7].r1 , S_Resmul[cpl7].v1 ,S_Resmul[cpl7].b1 ,S_Resmul[cpl7].a1 ,S_Resmul[cpl7].r2 ,S_Resmul[cpl7].v2 ,S_Resmul[cpl7].b2 ,S_Resmul[cpl7].a2)
	end
	if npl8 ~= 0 then
		PrintStringOn("CMU_nbr09" ,"8"	, S_FONTE, S_MUPF,"LEFT"	, S_Resmul[cpl8].r1 , S_Resmul[cpl8].v1 ,S_Resmul[cpl8].b1 ,S_Resmul[cpl8].a1 ,S_Resmul[cpl8].r2 ,S_Resmul[cpl8].v2 ,S_Resmul[cpl8].b2 ,S_Resmul[cpl8].a2)
		PrintStringOn("CMU_player09" ,npl8name	, S_FONTE, S_MUPF,"CENTER"	, S_Resmul[cpl8].r1 , S_Resmul[cpl8].v1 ,S_Resmul[cpl8].b1 ,S_Resmul[cpl8].a1 ,S_Resmul[cpl8].r2 ,S_Resmul[cpl8].v2 ,S_Resmul[cpl8].b2 ,S_Resmul[cpl8].a2)
	end

	if isGameMaster() == FALSE then	
		if masterReadyToRegister() == 1 then
			local idx = getNetState() - 1
			PrintDebug("Etat : "..idx)
			SetEtat( idx )
		end
	end

	if PushEsc() == 1 then
		StopEsc()
		if GetLuaObject("CMU_Create").go == 0 then
			Selected("CMU_BT_BACK")
			if isGameMaster() == FALSE then
				terminateNetworkGame()
				terminateNetwork()
			else
				leaveNetGame()
			end
			LoadInterface("Menu_Multi")
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

	if PushTab()==TRUE then
		StopTab()
		--PrintDebug("########################################### TAB PUSH ...")

		if cmuIsChatOn==FALSE then
			--PrintDebug("########################################### CHAT BEGIN ...")
			cmuChatLine = ""
			cmuIsChatOn = TRUE
			cmuClock.Start(cmuClock)
			cmuFlashing = TRUE
			cmuDraw = TRUE
			StartTextGrabNoTab(CMU_MAX_CHAR-cmuLentghPlayerName)
		end
	end

	if cmuIsChatOn==TRUE then
		cmuChatLine = GetGrabbedText()
	end

	if GetLastChatLine() >= cmuPrintLineNum then
		cmuL1 = GetLastChatLine() - cmuPrintLineNum + 1
	else
		cmuL1 = 0
	end

end

-- Function 'End'
function CMU_Fond:End()
end

-- Function 'Notify'
function CMU_Fond:Notify(Event)
	if Event==TI_GRAB_END then
		--PrintDebug("\t-----------------------> CHAT ENTER / CANCEL ...")
		local retVal = IsGrabbedTextCanceled()
		if retVal == 0 then
			StopEnter()
			--PrintDebug("\t-----------------------> CHAT SEND ...")
			setChatMessage(cmuChatLine)
		elseif retVal == 1 then
			--PrintDebug("\t-----------------------> CHAT CANCEL ...")
			StopEsc()
		else
			--PrintDebug("########################################### CHAT END ...")
			StopTab()
			cmuChatLine = ""
			cmuIsChatOn = FALSE
			cmuFlashing = FALSE
		end
		if retVal == 0 or retVal == 1 then
			--PrintDebug("\t-----------------------> CHAT RESTART ...")
			cmuChatLine = ""
			StartTextGrabNoTab(CMU_MAX_CHAR-cmuLentghPlayerName)
		end
	end
end
