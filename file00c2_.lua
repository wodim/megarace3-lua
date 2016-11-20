L2lua={}

-- Temps alloué initialement (en s)
TIME_INIT			= 180

-- Chrono global
clockL2				= clone(LUACLOCK)

-- Function 'Init'
function L2lua:Init()

  	PrintDebug("Track L2 init ...")
	
	ChargeSon("Stalact1")
	ChargeSon("Stalact3")
	ChargeSon("Eboul1")
	ChargeSon("Bave")
	ChargeSon("Luciole")
	ChargeSon("Araign1")
	ChargeSon("Araign2")
	ChargeSon("Gouttes")
	ChargeSon("Rocher1")
	ChargeSon("Impact1")
	ChargeSon("ReineCRI")
	ChargeSon("ReineHUR")
	ChargeSon("ReineMOR")
	ChargeSon("ReineMVT")
	ChargeSon("ReinePON")

	LoadEntityAnim("father_bave_01","bave_01")
	StartEntityAnim("father_bave_01", "bave_01", -1, -1, 1)



	LoadEntityAnim("o3d_insext01","insex_stand01")
	StartEntityAnim("o3d_insext01","insex_stand01",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext01", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext03","insex_stand01")
	StartEntityAnim("o3d_insext03","insex_stand01",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext03", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext13","INSEX_standfull")
	StartEntityAnim("o3d_insext13","INSEX_standfull",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext13", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext14","INSEX_standfull")
	StartEntityAnim("o3d_insext14","INSEX_standfull",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext14", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext15","insex_stand01")
	StartEntityAnim("o3d_insext15","insex_stand01",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext15", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext16","insex_stand01")
	StartEntityAnim("o3d_insext16","insex_stand01",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext16", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext17","INSEX_standfull")
	StartEntityAnim("o3d_insext17","INSEX_standfull",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext17", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext18","INSEX_standfull")
	StartEntityAnim("o3d_insext18","INSEX_standfull",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext18", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext19","INSEX_standfull")
	StartEntityAnim("o3d_insext19","INSEX_standfull",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext19", "QuadPatch46", TRUE, -1)

	LoadEntityAnim("o3d_insext02","INSEX_standfull")
	StartEntityAnim("o3d_insext02","INSEX_standfull",-1,-1,1)
	JoueSon3DOnAtomic("Araign2", "o3d_insext02", "QuadPatch46", TRUE, -1)


	PrintDebug("Anims Loaded")
	
  	clockL2.Start(clockL2)
  	clockL2.Pause(clockL2)
  	SetTotalLimitTime(0, 0, TIME_INIT, FALSE)
  	SetLimitTime(0, 0, TIME_INIT)
	SetCalibrateTime(32)
	
	AutoriseWrongWay(FALSE)
	
	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)
	SetDrawTarget(FALSE)

	--VolumeMusique(100)
	JoueFluxMusique("L2-Earthquake", 3, TRUE)

end

-- Function 'Update'
function L2lua:Update()
  	
  	if GetLuaObject("BoxTriggerJump02").pass == 0 then
  	
  	  	local time = clockL2.Time(clockL2) / 1000
  	 	if time >= TIME_INIT then
  	 		EndL2Race(FALSE)
  	 	end
  	 end

end

-- Function 'End'
function L2lua:End()
	--VolumeMusique(100)
end


-- Function 'Notify'
function L2lua:Notify(event, param)

	PrintDebug("Notify L2")

	if event == TM_ENTITY_MORT then
		if param.name=="Player1" then
			EndL2Race(FALSE)
			KillEntity(param.name)
		end
	end
  	
	if event == TM_RACE_STARTS then
  		clockL2.Continue(clockL2)
  	end
end


-- Function 'Clock'
function L2lua:Clock(id)

	EndRaceClock(id)
end

---------------------------  Elements spécifiques aux messages  -------------------------------

MSG_ROCK_FADE1			= 1
MSG_ROCK_FADE2			= 3
MSG_ROCK_FADE3			= 1


---------------------------  Elements spécifiques aux rochers  -------------------------------

R_DELAY_1			= 40
R_DELAY_2			= 1400
R_DESTRUC_SPEED			= 250
R_DESTRUC_LIFE			= -80

function ColRock(rock)	
	
	startSFX( GetLuaObject(rock).module1SFX )

	if HitEntity(rock) == "Player1" then
	
		JoueSon3D("Impact1", "Player1", FALSE, -1)
		if (GetSpeed(rock) + GetSpeed("Player1")) > R_DESTRUC_SPEED then
			KillEntity(rock)
			DiminishSpeed("Player1", 1)
			NotifyToEntity("Player1",TE_ADD_LIFE_WITH_SHIELD, R_DESTRUC_LIFE)
		end
	else
		JoueSon3D("Rocher1", rock, FALSE, -1)
	end
end

---------------------------  Elements spécifiques aux gouttes  -------------------------------

G_LIFE_LOST			= -250


---------------------------  Elements spécifiques à la reine  -------------------------------

-- Anim

Q_ANIM_RATE			= 1.5
-- Synchro anim 'dummy' / 'queen' et 'queen_abdo' (sur la base d'un Q_ANIM_RATE de 1)
Q_ANIM_DUMMY_RATE		= 0.03 * Q_ANIM_RATE

-- Etats d'animation
Q_STATE_START			= 0
Q_RATE_START			= 1 * Q_ANIM_RATE

Q_STATE_START2F			= 1
Q_RATE_START2F			= 1 * Q_ANIM_RATE

Q_STATE_FRONT			= 2
Q_RATE_FRONT			= 1 * Q_ANIM_RATE

Q_STATE_F2S			= 3
Q_RATE_F2S			= 1 * Q_ANIM_RATE

Q_STATE_STDF			= 4
Q_RATE_STDF			= 1 * Q_ANIM_RATE

Q_STATE_S2F			= 5
Q_RATE_S2F			= 1 * Q_ANIM_RATE

Q_STATE_BACK			= 6
Q_RATE_BACK			= 1 * Q_ANIM_RATE

Q_STATE_B2S			= 7
Q_RATE_B2S			= 1 * Q_ANIM_RATE

Q_STATE_STDB			= 8
Q_RATE_STDB			= 1 * Q_ANIM_RATE

Q_STATE_S2B			= 9
Q_RATE_S2B			= 1 * Q_ANIM_RATE

Q_STATE_F2B			= 10
Q_RATE_F2B			= 0.5 * Q_ANIM_RATE

Q_STATE_B2F			= 11
Q_RATE_B2F			= 0.5 * Q_ANIM_RATE

Q_STATE_DEAD			= 12
Q_RATE_DEAD			= 1 * Q_ANIM_RATE


-- Temps que la reine reste de face (en s)
Q_TIME_BACK			= 4

-- Temps de synchro de ponte avec anim (en s)
QMINE_TIME_SYNCHRO		= 0
-- Temps de vie des mines (en ms)
QMINE_TIME_LIFE			= 5000
-- Mines Number (plus le temps de vie des mines et Q_ANIM_RATE sont important, plus ce nombre doit-être élevé)
QMINE_NUMBER			= 20
-- Fréquence de ponte
QMINE_FREQ			= 1.3--0.9 * Q_RATE_FRONT

-- Vie
Q_LIFE				= 40	--(susceptible de varier au cours du temps)
QMINE_LIFE			= 10

-- Facteur Missile
Q_FACT_MISS			= 10
QMINE_FACT_MISS			= 100

-- Dégats
Q_COL_LIFE			= 1
Q_COL_LIFE_TRIG			= -Q_COL_LIFE
QMINE_COL_LIFE			= 10

-- Pourcentage de la vitesse que le pod garde quand il entre dans la reine (75 -> 75% de sa vitesse init; attention 0 -> 100%)
Q_SPEED_LOST			= 1
Q_SPEED_MAX			= -0.6
Q_ACC_MAX			= -0.9
Q_GRIP_MAX			= -0.5


-- Function 'StartQueen'
function StartQueen()

	if GetLuaObject("o3d_dummy").enable == FALSE then
	
		StartEntityAnim("o3d_lianes", "lianes", -1, -1, 1)

		PrintDebug("StartQueen")

		GetLuaObject("o3d_dummy").enable = TRUE
		
		EnableCollisionDetection("o3d_queen", TRUE)
		
		JoueSon2DNoInst("ReineHUR", FALSE, -1)
		
		AnimQueen()
		
		ShowEntity("o3d_queen")
		ShowEntity("o3d_queen_abdo_front")
		
		HideAtomic("o3d_queen", "Bones04", TRUE)
		HideAtomic("o3d_queen", "Line01", TRUE)
		HideAtomic("o3d_queen_abdo_front", "father_abdo", TRUE)
		HideAtomic("o3d_queen_abdo_front", "Line02", TRUE)
		
		AutoriseWrongWay(FALSE)
	end

end

-- Function 'PauseQueen'
function PauseQueen(pause)

	if GetLuaObject("o3d_dummy").pause ~= pause then
	
		PrintDebug("PauseQueen")
		GetLuaObject("o3d_dummy").pause = pause
	end
	
end

-- Function 'PauseQueenMines'
function PauseQueenMines()

	PrintDebug("Pause Mines")

	FallingObjectsPause("queen_mines")
	
end

-- Function 'RestartQueenMines'
function RestartQueenMines()

	PrintDebug("Restart Mines")
	
	StartEvent("queen_mines")
	
end

-- Function 'RegenQueenMines'
function RegenQueenMines()

	PrintDebug("Regen Mines")
		
	if GetLuaObject("o3d_dummy").state == Q_STATE_FRONT and GetLuaObject("o3d_dummy").back == FALSE and GetLuaObject("o3d_dummy").hit == FALSE and GetLuaObject("o3d_dummy").end_hit == FALSE then
	
		GetLuaObject("o3d_queen_abdo_front").mine_number = 1
	end
	
end

-- Function 'PosQueen'
function PosQueen()
	
	MoveEntity("o3d_queen", "o3d_dummy", "dummy", 0, 0, 0)
	
	MoveEntity("o3d_queen_abdo_front", "o3d_queen", "Bones04", 0, 0, 0)
	if GetLuaObject("o3d_dummy").state == Q_STATE_FRONT then
		MoveEntity("t_queen_mine", "o3d_queen_abdo_front", "Line02", 0, 0, 0)
	end
	
	MoveEntity("t_queen_box", "o3d_dummy", "dummy", 0, 0, 0)
end

-- Function 'HitQueen'
function HitQueen()

	PrintDebug("HitQueen")

	if GetLuaObject("o3d_dummy").back == TRUE or GetLuaObject("o3d_dummy").hit == TRUE or GetLuaObject("o3d_dummy").end_hit == TRUE then
		return
	end
	
	JoueSon3D("ReineCRI", "o3d_queen", FALSE, -1)

	Q_LIFE = Q_LIFE - Q_FACT_MISS
	
	PrintDebug(tostring(Q_LIFE))
	
	GetLuaObject("o3d_dummy").hit = TRUE
	
	if Q_LIFE <= 0 then
	
		GetLuaObject("o3d_dummy").dead = TRUE
		
	else
		
		if GetLuaObject("o3d_dummy").first_hit == TRUE then
		
			DisplayMsgCata(265)
			GetLuaObject("o3d_dummy").first_hit = FALSE
		else
			stopSFX(GetLuaObject("o3d_queen").fx_normal)
			stopSFX(GetLuaObject("o3d_queen_abdo_front").fx_normal)			
		end
		
		startSFX(GetLuaObject("o3d_queen").fx_invincible)
		startSFX(GetLuaObject("o3d_queen_abdo_front").fx_invincible)
	end
	
end


-- Function 'AnimQueen'
function AnimQueen()
	
	if GetLuaObject("o3d_dummy").state == Q_STATE_START then
	
		--PrintDebug("Q_STATE_START")
	
		if GetLuaObject("t_queen2").first_hit == FALSE then
		
			StartEntityAnim("o3d_queen", "queenstand_2march", -1, 1, Q_RATE_START2F)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_START2F
		else		
			StartEntityAnim("o3d_queen", "queen_stand", -1, 1, Q_RATE_START)
						
		end
	
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_START2F then
	
		--PrintDebug("Q_STATE_START2F")
		
		if GetLuaObject("o3d_dummy").pause == TRUE then
		
			StartEntityAnim("o3d_queen", "queen_marche2stand_2", -1, 1, Q_RATE_F2S)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_F2S			
		
		else
		
			ResumeEntityAnim("o3d_dummy")
			
			StartEntityAnim("o3d_queen", "queen_marche", -1, 1, Q_RATE_FRONT)
			
			StartEntityAnim("o3d_queen_abdo_front", "abdo", -1, 1, Q_RATE_FRONT)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_FRONT
			
			RestartQueenMines()
			--RegenQueenMines()
			JoueSon3DOnAtomic("ReinePON", "o3d_queen_abdo_front", "Line02", FALSE, -1)
			JoueSon3D("ReineMVT", "o3d_queen", TRUE, -1)
			
		end
		

	elseif GetLuaObject("o3d_dummy").state == Q_STATE_FRONT then
	
		--PrintDebug("Q_STATE_FRONT")
	
		if GetLuaObject("o3d_dummy").hit == TRUE then
		
			PauseEntityAnim("o3d_dummy")
			PauseQueenMines()
		
			StartEntityAnim("o3d_queen", "queen_demi_avar", -1, 1, Q_RATE_F2B)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_F2B
			
			StoppeSon("ReineMVT", "o3d_queen")
			
		elseif GetLuaObject("o3d_dummy").pause == TRUE then
		
			PauseEntityAnim("o3d_dummy")
			PauseQueenMines()
		
			StartEntityAnim("o3d_queen", "queen_marche2stand_2", -1, 1, Q_RATE_F2S)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_F2S
			
			StoppeSon("ReineMVT", "o3d_queen")			
		
		else
		
			StartEntityAnim("o3d_queen", "queen_marche", -1, 1, Q_RATE_FRONT)
			StartEntityAnim("o3d_queen_abdo_front", "abdo", -1, 1, Q_RATE_FRONT)
			
			GetLuaObject("o3d_queen_abdo_front").mine_number = GetLuaObject("o3d_queen_abdo_front").mine_number + 1
			if GetLuaObject("o3d_queen_abdo_front").mine_number >= QMINE_NUMBER then
				RegenQueenMines()
			end
			
			JoueSon3DOnAtomic("ReinePON", "o3d_queen_abdo_front", "Line02", FALSE, -1)
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_F2S then
	
		--PrintDebug("Q_STATE_F2S")
	
		if GetLuaObject("o3d_dummy").hit == TRUE or GetLuaObject("o3d_dummy").pause == FALSE then
		
			StartEntityAnim("o3d_queen", "queen_stand2march_2", -1, 1, Q_RATE_S2F)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_S2F
			
		else			
		
			StartEntityAnim("o3d_queen", "queen_stand_2", -1, 1, Q_RATE_STDF)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_STDF
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_STDF then
	
		--PrintDebug("Q_STATE_STDF")
		
		if GetLuaObject("o3d_dummy").hit == TRUE or GetLuaObject("o3d_dummy").pause == FALSE then
		
			StartEntityAnim("o3d_queen", "queen_stand2march_2", -1, 1, Q_RATE_S2F)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_S2F
			
		else
		
			StartEntityAnim("o3d_queen", "queen_stand_2", -1, 1, Q_RATE_STDF)
			StartEntityAnim("o3d_queen_abdo_stdf", "queen_stand_2_abdo", -1, 1, Q_RATE_STDF)
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_S2F then
	
		--PrintDebug("Q_STATE_S2F")
			
		if GetLuaObject("o3d_dummy").hit == TRUE then
			
			StartEntityAnim("o3d_queen", "queen_demi_avar", -1, 1, Q_RATE_F2B)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_F2B
			
		elseif GetLuaObject("o3d_dummy").pause == TRUE then
		
			StartEntityAnim("o3d_queen", "queen_marche2stand_2", -1, 1, Q_RATE_F2S)
			
			GetLuaObject("o3d_dummy").state= Q_STATE_F2S
			
		else
		
			ResumeEntityAnim("o3d_dummy")
		
			StartEntityAnim("o3d_queen", "queen_marche", -1, 1, Q_RATE_FRONT)
			
			StartEntityAnim("o3d_queen_abdo_front", "abdo", -1, 1, Q_RATE_FRONT)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_FRONT
			
			RestartQueenMines()
			--RegenQueenMines()
			JoueSon3DOnAtomic("ReinePON", "o3d_queen_abdo_front", "Line02", FALSE, -1)
			JoueSon3D("ReineMVT", "o3d_queen", TRUE, -1)
			
		end
				
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_BACK then
	
		--PrintDebug("Q_STATE_BACK")
	
		if GetLuaObject("o3d_dummy").back == FALSE then
		
			PauseEntityAnim("o3d_dummy")
		
			StartEntityAnim("o3d_queen", "queen_demi_arav01", -1, 1, Q_RATE_B2F)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_B2F
			
			StoppeSon("ReineMVT", "o3d_queen")
			
		elseif GetLuaObject("o3d_dummy").pause == TRUE then
		
			PauseEntityAnim("o3d_dummy")
		
			StartEntityAnim("o3d_queen", "queen_marchear2st", -1, 1, Q_RATE_B2S)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_B2S
			
			StoppeSon("ReineMVT", "o3d_queen")	
		
		else
		
			StartEntityAnim("o3d_queen", "queen_marche_ar", -1, 1, Q_RATE_BACK)
			
			StartEntityAnim("o3d_queen_abdo_back", "queen_marche_ar_abdo", -1, 1, Q_RATE_BACK)
			
			EntityStartMissile("o3d_queen", "MissileCata", 5000, 1, "Line01")
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_B2S then
	
		--PrintDebug("Q_STATE_B2S")
	
		if GetLuaObject("o3d_dummy").dead == TRUE then
		
			StartEntityAnim("o3d_queen", "queen_attackfin", -1, 1, Q_RATE_DEAD)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_DEAD
			
			JoueSon3D("ReineMOR", "o3d_queen", FALSE, -1)
		
		
		elseif GetLuaObject("o3d_dummy").back == FALSE or GetLuaObject("o3d_dummy").pause == FALSE then
		
			StartEntityAnim("o3d_queen", "queen_marchear2st", -1, 1, Q_RATE_S2B)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_S2B
			
		else			
		
			StartEntityAnim("o3d_queen", "queen_marchear_st", -1, 1, Q_RATE_STDB)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_STDB
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_STDB then
	
		--PrintDebug("Q_STATE_STDB")
		
		if GetLuaObject("o3d_dummy").back == FALSE or GetLuaObject("o3d_dummy").pause == FALSE then
		
			StartEntityAnim("o3d_queen", "queen_marchear2st", -1, 1, Q_RATE_S2B)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_S2B
			
		else
		
			StartEntityAnim("o3d_queen", "queen_marchear_st", -1, 1, Q_RATE_STDB)
			StartEntityAnim("o3d_queen_abdo_stdf", "queen_marchear_st_abdo", -1, 1, Q_RATE_STDB)
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_S2B then
	
		--PrintDebug("Q_STATE_S2B")
	
		if GetLuaObject("o3d_dummy").back == FALSE then
		
			StartEntityAnim("o3d_queen", "queen_demi_arav01", -1, 1, Q_RATE_B2F)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_B2F			
	
		elseif GetLuaObject("o3d_dummy").pause == TRUE then
		
			StartEntityAnim("o3d_queen", "queen_marchear2st", -1, 1, Q_RATE_B2S)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_B2S
			
		else
		
			ResumeEntityAnim("o3d_dummy")
		
			StartEntityAnim("o3d_queen", "queen_marche_ar", -1, 1, Q_BACK_BACK)
			
			EntityStartMissile("o3d_queen", "MissileCata", 5000, 1, "Line01")
			
			GetLuaObject("o3d_dummy").state = Q_STATE_BACK
			
			JoueSon3D("ReineMVT", "o3d_queen", TRUE, -1)
			
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_F2B then
	
		--PrintDebug("Q_STATE_F2B")
					
		GetLuaObject("o3d_dummy").back = TRUE
		GetLuaObject("o3d_dummy").hit = FALSE
		StartClock("o3d_dummy", Q_TIME_BACK, 0)
	
		if GetLuaObject("o3d_dummy").pause == TRUE or GetLuaObject("o3d_dummy").dead == TRUE then
			
			StartEntityAnim("o3d_queen", "queen_marchear2st", -1, 1, Q_RATE_B2S)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_B2S
			
		else
		
			ResumeEntityAnim("o3d_dummy")
			
			StartEntityAnim("o3d_queen", "queen_marche_ar", -1, 1, Q_RATE_BACK)
			
			EntityStartMissile("o3d_queen", "MissileCata", 5000, 1, "Line01")
			
			GetLuaObject("o3d_dummy").state = Q_STATE_BACK
			
			JoueSon3D("ReineMVT", "o3d_queen", TRUE, -1)
		
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_B2F then
	
		--PrintDebug("Q_STATE_B2F")
		
		GetLuaObject("o3d_dummy").end_hit = FALSE
		stopSFX(GetLuaObject("o3d_queen").fx_invincible)
		stopSFX(GetLuaObject("o3d_queen_abdo_front").fx_invincible)
		startSFX(GetLuaObject("o3d_queen").fx_normal)
		startSFX(GetLuaObject("o3d_queen_abdo_front").fx_normal)
	
		if GetLuaObject("o3d_dummy").hit == TRUE then
			
			StartEntityAnim("o3d_queen", "queen_demi_avar", -1, 1, Q_RATE_F2B)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_F2B	
			
		elseif GetLuaObject("o3d_dummy").pause == TRUE then
				
			StartEntityAnim("o3d_queen", "queen_marche2stand_2", -1, 1, Q_RATE_F2S)
						
			GetLuaObject("o3d_dummy").state = Q_STATE_F2S
			
		else
		
			ResumeEntityAnim("o3d_dummy")
				
			StartEntityAnim("o3d_queen", "queen_marche", -1, 1, Q_RATE_FRONT)
			
			StartEntityAnim("o3d_queen_abdo_front", "abdo", -1, 1, Q_RATE_FRONT)
			
			GetLuaObject("o3d_dummy").state = Q_STATE_FRONT
			
			RestartQueenMines()
			--RegenQueenMines()
			JoueSon3DOnAtomic("ReinePON", "o3d_queen_abdo_front", "Line02", FALSE, -1)
			JoueSon3D("ReineMVT", "o3d_queen", TRUE, -1)
		
		end
		
	elseif GetLuaObject("o3d_dummy").state == Q_STATE_DEAD then
	
		--PrintDebug("Q_STATE_DEAD")
	
		EndL2Race(TRUE)
		
	end			
end

---------------------------  Elements spécifiques aux insectes sauteur -------------------------------

-- Dégats
I_LIFE_LOST			= -1
I_NRJ_LOST			= 0
-- Pourcentage de la vitesse que le pod garde quand il entre dans l'insecte (75 -> 75% de sa vitesse init; attention 0 -> 100%)
I_SPEED_LOST			= 1

-- Durrée de l'impacte (en s)
I_IMPACT_DUR			= 0.8

-- Paramètres vibration pod
-- Durée (en ms)
I_VIB_DUR			= 1000
-- Type de vibrations (1 = avant/arrière ; 2 = gauche/droite ; 3 = les deux)
I_VIB_TYPE			= 2
-- Intensité pitch
I_VIB_PITCH_I			= 0
-- Frequence pitch
I_VIB_PITCH_F			= 0
-- Intensité roll
I_VIB_ROLL_I			= 30000
-- Frequence roll
I_VIB_ROLL_F			= 10



---------------------------  fin de course -------------------------------

L2end	= FALSE

-- Function 'EndL2Race'
function EndL2Race(win)

	if L2end == TRUE then
		return
	end
	
	L2end = TRUE
	
  	clockL2.Pause(clockL2)
  	StopChrono("Player1")
	
	if win == FALSE then
		setVideo("sequence10", "sequence_10")
	end
	
	EndRace(win)
	
end