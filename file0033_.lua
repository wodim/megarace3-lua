GlobalTracks={ }

-- Function 'Init'
function GlobalTracks:Init()

	-- Set les couleurs de l'interface-jeu
	PrintDebug("Set interface game colors ...")
	SetColorIG(WRONG_WAY_COLOR, 0, 0, 255, 255)
	SetColorIG(RANK_COLOR, 255, 255, 70, 255)
	SetColorIG(SPEED_COLOR, 185, 200, 215, 255)
	SetColorIG(LAP_COLOR, 255, 255, 70, 255)
	SetColorIG(TIME_COLOR, 185, 200, 215, 255)
	SetColorIG(LAST_TIME_COLOR, 185, 200, 215, 255)
	SetColorIG(MODE_COLOR, 255, 255, 255, 255)
	SetColorIG(PERCENT_COLOR, 255, 0, 0, 255)
	SetColorIG(BONUS_PLUS_COLOR, 255, 0, 0, 255)
	SetColorIG(GO_COLOR, 255, 0, 0, 255)
	PrintDebug("Interface game colors: ok")
	player = GetPlayerName()
-- -------------------------------------------------------------------------
-- Pour toutes les tracks
-- -------------------------------------------------------------------------
	-- Groupe de sons quand la mission commence
	AjouteSon2DAGroupe("mission_starts_grp", "D_Miss1", "a", 1)
	AjouteSon2DAGroupe("mission_starts_grp", "D_Miss2", "a", 1)
	AjouteSon2DAGroupe("mission_starts_grp", "D_Miss3", "a", 1)

	-- Groupe de sons quand la mission se termine bien
	AjouteSon2DAGroupe("mission_successful_grp", "A_Gagn1", "a", 1)
	AjouteSon2DAGroupe("mission_successful_grp", "A_Gagn2", "a", 1)
	AjouteSon2DAGroupe("mission_successful_grp", "A_Gagn3", "a", 1)

	-- Groupe de sons quand la mission se termine mal
	AjouteSon2DAGroupe("mission_unsuccessful_grp", "A_Perd1", "a", 1)
	AjouteSon2DAGroupe("mission_unsuccessful_grp", "A_Perd2", "a", 1)
	AjouteSon2DAGroupe("mission_unsuccessful_grp", "A_Perd3", "a", 1)
-- -------------------------------------------------------------------------


end


function GlobalTracks:Notify(event,param)

	if event==TM_RACE_STARTS then
		StartClockTrackGlobal(5, 0)
	end

end


function GlobalTracks:Clock(Id)

	if Id==0 then
		JoueBoyleRandomComment("mission_starts_grp", 1, 0)
	end

end



-- ----------------------------------------------
-- Message Cata
-- ----------------------------------------------

function DisplayMsgCata(strId)
	--SetFadeTextIndexIG(strId, S_PF, 255, 0, 0, 255, 2, 6, 1, -1, 435)
	SetFadeTextIndexBoxIG(strId, S_PF, 255, 0, 0, 255, 2, 6, 1, -1, 395, 500, S_PF * 3.1)
end

function DisplayMsgCataCol(strId, red, green, blue)
	--SetFadeTextIndexIG(strId, S_PF, red, green, blue, 255, 2, 6, 1, -1, 435)
	SetFadeTextIndexBoxIG(strId, S_PF, red, green, blue, 255, 2, 6, 1, -1, 395, 500, S_PF * 3.1)
end

-- ----------------------------------------------


-- ----------------------------------------------
-- Gestion fin track
-- ----------------------------------------------

endTrack	= FALSE

IdClockWin	= 935
IdClockLose	= 936


-- ----------------------------------------------
-- Fin de la course pour Practice, Arcade et Cata
-- ----------------------------------------------

function EndRace(win)

	if endTrack == TRUE then
		return
	end
	
	endTrack = TRUE
	
	StopRace()
	if win == FALSE then
		SetFadeTextIndexIG(406, 55, 255, 0, 0, 255, 2, 10, 0, -1, 350)
		StartClockTrack(8, IdClockLose)
		JoueRandomGroupe("JingleLose_grp", 1, 0)
	else
		SetFadeTextIndexIG(405, 55, 0, 255, 0, 255, 2, 10, 0, -1, 350)
		StartClockTrack(8, IdClockWin)
		JoueRandomGroupe("JingleWin_grp", 1, 0)
	end

end

function EndRaceClock(id)

	if id == IdClockLose then
	
		LooseRace()
		LoadInterface("Menu_Fin_Course")
		
	elseif id == IdClockWin then
	
		WinRace()
		LoadInterface("Menu_Fin_Course")
	end
end

function EndPracticeClock(id)

	if id == IdClockLose then
	
		LooseRace()
		LoadInterface("Menu_Prares")
		
	elseif id == IdClockWin then
	
		WinRace()
		UpdatePracticeResults(GetGlobalVariable("PracticeNivo"),GetGlobalVariable("PracticeTyp"),1)
		LoadInterface("Menu_Prares")
	end
end


-- ----------------------------------------------



-- ----------------------------------------------
-- Gestion Mode SOLO
-- ----------------------------------------------

function InitSOLO()

	nbTour = getNetGameDuration() - 1
	SetNbLap(nbTour + 1)
	
	DisplayArrowOnPods()
	SetDrawPodName(TRUE)
	
end

function NotifySOLO(event, param)

	if event==TM_POD_NEWLAP then
		if GetPodCurrentLap(param.name) > nbTour then
			PrintDebug("Pod Win: ")
			PrintDebug(param.name)
			if param.name==GetNamePlayer1() then
				if GetPodRank(param.name) > 1 then
					EndRaceSOLO(FALSE)
				else
					EndRaceSOLO(TRUE)
				end
			end
		end
	end
	
	if event==TM_ENTITY_MORT then
		if param.name == GetNamePlayer1() then
			EndRaceSOLO(FALSE)
		end
		KillEntity(param.name)
	end

	if event==TM_RACE_STOPS then
		StopFadeTextIG(405, 0)
		StopFadeTextIG(406, 0)
		SetFadeTextIndexIG(686, 40, 0, 255, 0, 255, 2, 10, 0, -1, 350)
		StartClockTrack(3, IdClockWin)
	end
	
end

function EndRaceSOLO(win)

	if endTrack == TRUE then
		return
	end
	
	endTrack = TRUE
	
	if win == FALSE then
		StartFadeTextIG (406, 55, 255, 0, 0, 255, 2, -1, 350)
		JoueRandomGroupe("JingleLose_grp", 1, 0)
	else
		StartFadeTextIG (405, 55, 0, 255, 0, 255, 2, -1, 350)
		JoueRandomGroupe("JingleWin_grp", 1, 0)
	end
	
	StopRace()
end

function EndRaceClockSOLO(id)

	if id == IdClockWin then
		WinRace()
		LoadInterface("Menu_MulStat1")
	end
end



-- ----------------------------------------------
-- Gestion Mode TEAM
-- ----------------------------------------------

function InitTEAM()

	nbTour = getNetGameDuration() - 1
	SetNbLap(nbTour + 1)
	
	DisplayArrowOnPods()
	SetDrawPodName(TRUE)
	
end

function NotifyTEAM(event, param)

	if event==TM_POD_NEWLAP then
		if GetPodCurrentLap(param.name) > nbTour then
			PrintDebug("Pod Win: ")
			PrintDebug(param.name)
			if param.name==GetNamePlayer1() then
				if GetPodRank(param.name) > 1 then
					EndRaceTEAM(FALSE)
				else
					EndRaceTEAM(TRUE)
				end
			end
		end
	end
	
	if event==TM_ENTITY_MORT then
		if param.name == GetNamePlayer1() then
			EndRaceSOLO(FALSE)
		end
		KillEntity(param.name)
	end

	if event==TM_RACE_STOPS then
		StopFadeTextIG(405, 0)
		StopFadeTextIG(406, 0)
		SetFadeTextIndexIG(686, 40, 0, 255, 0, 255, 2, 10, 0, -1, 350)
		StartClockTrack(3, IdClockWin)
	end
	
end

function EndRaceTEAM(win)

	if endTrack == TRUE then
		return
	end
	
	endTrack = TRUE
	
	if win == FALSE then
		StartFadeTextIG (406, 55, 255, 0, 0, 255, 2, -1, 350)
		JoueRandomGroupe("JingleLose_grp", 1, 0)
	else
		StartFadeTextIG (405, 55, 0, 255, 0, 255, 2, -1, 350)
		JoueRandomGroupe("JingleWin_grp", 1, 0)
	end
	
	StopRace()
end

function EndRaceClockTEAM(id)

	if id == IdClockWin then
		WinRace()
		LoadInterface("Menu_MulStat1")
	end
end




-- ----------------------------------------------------------
-- Fonction pour gérer la réapparition des pods (FLAG / PREY)
-- ----------------------------------------------------------

function StartRespawn()
	
	KillEntityRespawn(GetNamePlayer1(), TRUE)

	respawn = TRUE
	clockRespawn.Start(clockRespawn)
	
	StartRespawnChrono(GetNamePlayer1())

end

function Respawn()
	
	respawn = FALSE
	clockRespawn.Pause(clockRespawn)
	
	sendResurrect()
	ResurectEntity(GetNamePlayer1(), TRUE, TRUE)
end



-- ----------------------------------------------
-- Gestion Mode FLAG
-- ----------------------------------------------

function InitFLAG(respawnDelay)

	timeLimite = getNetGameDuration() * 60
	
	clockFLAG = clone(LUACLOCK)
	clockRespawn = clone(LUACLOCK)

  	clockFLAG.Start(clockFLAG)
  	clockFLAG.Pause(clockFLAG)
	--SetLimitTime(0, 0, timeLimite)
	SetTotalLimitTime(0, 0, timeLimite, TRUE)

	displayRat = TRUE
	respawn = FALSE
	respawnTime = respawnDelay
	setRespawnDelay(respawnDelay)
	
	DisplayArrowOnPods()
	SetDrawPodName(TRUE)
	DisplayFlagPos()
	
	AutoriseWrongWay(TRUE)
	AfficheWrongWay(FALSE)
end


function UpdateFLAG()

  	local time = clockFLAG.Time(clockFLAG) / 1000
 	if time >= timeLimite then
 		EndRaceFLAG()
 	end
 	
 	if respawn == TRUE then
 		time = clockRespawn.Time(clockRespawn) / 1000
 		if time >= respawnTime then
 			Respawn()
 		end
 	end
 	
	if IsFlagOnGround() == TRUE then
	
		if displayRat == FALSE then
		
			displayRat = TRUE
			ShowEntity("Rat")
		end		
	
		if (respawn == FALSE) and (IsEntityIn(GetNamePlayer1(), "Rat") == TRUE) and (endTrack == FALSE) then
		
			setNetFlag()
		end
		
	else
		if displayRat == TRUE then
			displayRat = FALSE
			HideEntity("Rat")
		end
		
		MoveEntity("Rat", GetPodWithFlag(), "", 0, 0, 0)	
	end
end


function NotifyFLAG(event, param)

	if event==TM_ENTITY_MORT then
		if param.name==GetNamePlayer1() then
			StartRespawn()
		else
			KillEntityRespawn(param.name, TRUE)
		end
	end

	if event==TM_RACE_STOPS then
		SetFadeTextIndexIG(686, 40, 0, 255, 0, 255, 2, 10, 0, -1, 350)
		StartClockTrack(2, IdClockWin)
	end


	if event == TM_RACE_STARTS then
  		clockFLAG.Continue(clockFLAG)
  	end
	
end

function EndRaceFLAG()

	if endTrack == TRUE then
		return
	end
	
	endTrack = TRUE
	
	StopRace()
end

function EndRaceClockFLAG(id)

	if id == IdClockWin then
		WinRace()
		LoadInterface("Menu_MulStat1")
	end
end



-- ----------------------------------------------
-- Gestion Mode PREY
-- ----------------------------------------------

function InitPREY(respawnDelay)

	timeLimite = getNetGameDuration() * 60
	
	clockPREY = clone(LUACLOCK)
	clockRespawn = clone(LUACLOCK)

  	clockPREY.Start(clockPREY)
  	clockPREY.Pause(clockPREY)
	--SetLimitTime(0, 0, timeLimite)
	SetTotalLimitTime(0, 0, timeLimite, TRUE)

	displayRat = TRUE
	respawn = FALSE
	respawnTime = respawnDelay
	setRespawnDelay(respawnDelay)
	
	DisplayArrowOnPods()
	SetDrawPodName(TRUE)
	DisplayFlagPos()
	
	AutoriseWrongWay(TRUE)
	AfficheWrongWay(FALSE)
end


function UpdatePREY()

  	local time = clockPREY.Time(clockPREY) / 1000
 	if time >= timeLimite then
 		EndRacePREY()
 	end
 	
 	if respawn == TRUE then
 		time = clockRespawn.Time(clockRespawn) / 1000
 		if time >= respawnTime then
 			Respawn()
 		end
 	end
 	
	if IsFlagOnGround() == TRUE then
	
		if displayRat == FALSE then
		
			displayRat = TRUE
			ShowEntity("Rat")
		end		
	
		if (respawn == FALSE) and (IsEntityIn(GetNamePlayer1(), "Rat") == TRUE) and (endTrack == FALSE) then
		
			setNetFlag()
		end
		
	else
		if displayRat == TRUE then
			displayRat = FALSE
			HideEntity("Rat")
		end
		
		MoveEntity("Rat", GetPodWithFlag(), "", 0, 0, 0)	
	end
end


function NotifyPREY(event, param)

	if event == TM_ENTITY_MORT then
		if param.name==GetNamePlayer1() then
			StartRespawn()
		else
			KillEntityRespawn(param.name, TRUE)
		end
	end

	if event == TM_RACE_STOPS then
		SetFadeTextIndexIG(686, 40, 0, 255, 0, 255, 2, 10, 0, -1, 350)
		StartClockTrack(2, IdClockWin)
	end


	if event == TM_RACE_STARTS then
  		clockPREY.Continue(clockPREY)
  	end	
end

function EndRacePREY(win)

	if endTrack == TRUE then
		return
	end
	
	endTrack = TRUE
	
	StopRace()
end

function EndRaceClockPREY(id)

	if id == IdClockWin then
		WinRace()
		LoadInterface("Menu_MulStat1")
	end
end