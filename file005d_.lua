
-- ........................................................
-- ................... Gestion du temps ...................

-- Temps alloué initialement (en s)
TIME_INIT			= 100

-- Chrono global
clockL5				= clone(LUACLOCK)

-- ........................................................
-- ...................... Particules ......................

-- Vie initiale
PART_LIFE1			= 200
PART_LIFE2			= 132
PART_LIFE3			= 66

-- Facteur Missile
PART_FACT_MISS			= 0

-- Dégats reçus
PART_COL_LOST_LIFE		= 1
PART_MIS_LOST_LIFE		= 50

-- Dégats donnés
PART_COL_LIFE			= 10
PARTB_COL_LIFE			= 10

-- Correction durée anim (en pour un)
PART_ANIM_CORRECT		= 1.28


-- .................................................
-- .................... Distances ..................

playerState			= 0
p1State				= 2
p2State				= 2

dist1				= 0
dist2				= 0
dist3				= 0
dist4				= 0


-- .................................................
-- .................... Messages ..................

MSG_TARG_SIZE			= S_PF
MSG_TARG_POS_Y			= 415 - MSG_TARG_SIZE
MSG_DIST_SIZE			= S_GF
MSG_DIST_POS_Y			= MSG_TARG_POS_Y - MSG_DIST_SIZE + 8


-- .................................................
-- .................... Fonctions ..................

L5win				= FALSE
L5start				= FALSE

-- Function 'EndL5Race'
function EndL5Race(win)

	if L5win == TRUE then
		return
	end
		
	L5win = TRUE
	
	StopChrono("Player1")
  	clockL5.Pause(clockL5)
  	
  	StopFadeTextIG(279, 0)

	if win == TRUE then
		DisplayMsgCata(275)
	else
		DisplayMsgCata(274)
		setVideo("sequence10", "sequence_10")
	end
	
	EndRace(win)
	
end

-- Function 'ParticuleUpdate'
function ParticuleUpdate(particule)

	JumperUpdate(GetLuaObject(particule).jumperName)
	
	if GetLuaObject(particule).state == 0 then
		MoveEntity(GetLuaObject(particule).partName1, particule, "", 0, 0, 0)
	elseif GetLuaObject(particule).state == 1 then
		if GetLuaObject(GetLuaObject(particule).partName2).enable == TRUE then
			MoveEntity(GetLuaObject(particule).partName2, particule, "", 0, 0, 0)
		else
			MoveEntity(GetLuaObject(particule).partName3, particule, "", 0, 0, 0)
		end
	else
		if GetLuaObject(GetLuaObject(particule).partName4).enable == TRUE then
			MoveEntity(GetLuaObject(particule).partName4, particule, "", 0, 0, 0)
		else
			MoveEntity(GetLuaObject(particule).partName5, particule, "", 0, 0, 0)
		end
	end
end		
	

-- Function 'ParticuleHit'
function ParticuleHit(particule)

	if (GetLuaObject(particule).state < 1) and (GetLuaObject(particule).life <= PART_LIFE2) then
	
		PrintDebug("Touché 1")
		
		StopEntityAnim(GetLuaObject(particule).partName1, "partor")
		HideEntity(GetLuaObject(particule).partName1)
		
		GetLuaObject(GetLuaObject(particule).partName2).enable = TRUE
		ShowEntity(GetLuaObject(particule).partName2)
		StartEntityAnim(GetLuaObject(particule).partName2, "partor01", -1, 1, 1)
		startSFX("fx_" .. GetLuaObject(particule).partName2)
		
		GetLuaObject(particule).state = 1
		
	elseif (GetLuaObject(particule).state < 2) and (GetLuaObject(particule).life <= PART_LIFE3)  then
	
		PrintDebug("Touché 2")
	
		if GetLuaObject(GetLuaObject(particule).partName2).enable == TRUE then
			GetLuaObject(GetLuaObject(particule).partName2).enable = FALSE
			StopEntityAnim(GetLuaObject(particule).partName2, "partor01")
			HideEntity(GetLuaObject(particule).partName2)
			stopSFX("fx_" .. GetLuaObject(particule).partName2)
		else
			StopEntityAnim(GetLuaObject(particule).partName3, "partor02")
			HideEntity(GetLuaObject(particule).partName3)
			stopSFX("fx_" .. GetLuaObject(particule).partName3)
		end
		
		GetLuaObject(GetLuaObject(particule).partName4).enable = TRUE
		ShowEntity(GetLuaObject(particule).partName4)
		StartEntityAnim(GetLuaObject(particule).partName4, "partor03", -1, 1, 1)
		startSFX("fx_" .. GetLuaObject(particule).partName4)
		
		GetLuaObject(particule).state = 2
		
	elseif (GetLuaObject(particule).state < 3) and (GetLuaObject(particule).life <= 0) then
	
		PrintDebug("Touché 3")
	
		if GetLuaObject(GetLuaObject(particule).partName4).enable == TRUE then
			GetLuaObject(GetLuaObject(particule).partName4).enable = FALSE
			StopEntityAnim(GetLuaObject(particule).partName4, "partor03")
			HideEntity(GetLuaObject(particule).partName4)
			stopSFX("fx_" .. GetLuaObject(particule).partName4)
		else
			StopEntityAnim(GetLuaObject(particule).partName5, "partor04")
			HideEntity(GetLuaObject(particule).partName5)
			stopSFX("fx_" .. GetLuaObject(particule).partName5)
		end
	
		StoppeSon("PartMOV", "o3d_partor_col")
		StoppeSon("PartMOV", "o3d_partor_col01")
		
		GetLuaObject(particule).state = 3
		
		EndL5Race(TRUE)
	end
end



-- .................................................
-- ................... Fonctions L5 ................

L5lua={}

-- Function 'Init'
function L5lua:Init()
  	PrintDebug("Tarck L5 Update...")

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	AfficheWrongWay(FALSE)
	SetDrawProgBar(FALSE)
	SetDrawTarget(FALSE)
	
	loadSFX("o3d_partor_col", "fx_end", "sfx_L5BOOM")
	
  	SetTotalLimitTime(0, 0, TIME_INIT, TRUE)
  	SetCalibrateTime(24)
	
  	clockL5.Start(clockL5)
  	clockL5.Pause(clockL5)
  	
	JoueFluxMusique("L5-Particule", 3, TRUE);
	
	ChargeSon("PartMOV")
	ChargeSon("Anneau")
end

-- Function 'Update'
function L5lua:Update()

	if L5win == FALSE and L5start == TRUE then
	
		local playerDist
		if playerState == 0 then
			playerDist = DistanceEntityToEntity("Player1", "t_pos1")
		elseif playerState == 1 then
			playerDist = DistanceEntityToEntity("Player1", "t_pos2") + dist1
		elseif playerState == 2 then
			playerDist = DistanceEntityToEntity("Player1", "t_pos3") + dist2
		elseif playerState == 3 then
			playerDist = DistanceEntityToEntity("Player1", "t_pos4") + dist3
		end
	
		local partDist
		if p1State == 0 then
			partDist = DistanceEntityToEntity("o3d_partor_col", "t_pos1")
		elseif p1State == 1 then
			partDist = DistanceEntityToEntity("o3d_partor_col", "t_pos2") + dist1
		elseif p1State == 2 then
			partDist = DistanceEntityToEntity("o3d_partor_col", "t_pos3") + dist2
		elseif p1State == 3 then
			partDist = DistanceEntityToEntity("o3d_partor_col", "t_pos4") + dist3
		end
		if p2State == 0 then
			partDist = partDist + DistanceEntityToEntity("o3d_partor_col01", "t_pos1")
		elseif p2State == 1 then
			partDist = partDist + DistanceEntityToEntity("o3d_partor_col01", "t_pos2") + dist1
		elseif p2State == 2 then
			partDist = partDist + DistanceEntityToEntity("o3d_partor_col01", "t_pos3") + dist2
		elseif p2State == 3 then
			partDist = partDist + DistanceEntityToEntity("o3d_partor_col01", "t_pos4") + dist3
		end
		partDist = 0.5 * partDist
		
		local dist = partDist - playerDist
		if dist > 0 and dist > dist2 then
			dist = dist - dist4
		elseif dist < 0 and dist < (-dist2) then
			dist = dist4 + dist
		end
		if PLayerInWrongWay() == TRUE then
			dist = -dist
		end
		local str = tostring(floor(dist))
		PrintStringAt(320 - ( (strlen(str) / 2) * (0.45*MSG_DIST_SIZE) ), MSG_DIST_POS_Y, str, S_FONTE, MSG_DIST_SIZE, 0, 255, 0, 255, 0, 255, 0, 255)
  	
  		local time = clockL5.Time(clockL5) / 1000	
  		if time >= TIME_INIT then
  		
  			HideEntity(GetLuaObject("o3d_partor_col").partName1)
  			HideEntity(GetLuaObject("o3d_partor_col").partName2)
  			HideEntity(GetLuaObject("o3d_partor_col").partName3)
  			HideEntity(GetLuaObject("o3d_partor_col").partName4)
  			HideEntity(GetLuaObject("o3d_partor_col").partName5)
  			HideEntity(GetLuaObject("o3d_partor_col01").partName1)
  			HideEntity(GetLuaObject("o3d_partor_col01").partName2)
  			HideEntity(GetLuaObject("o3d_partor_col01").partName3)
  			HideEntity(GetLuaObject("o3d_partor_col01").partName4)
  			HideEntity(GetLuaObject("o3d_partor_col01").partName5)
  			
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col").partName1)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col").partName2)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col").partName3)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col").partName4)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col").partName5)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col01").partName1)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col01").partName2)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col01").partName3)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col01").partName4)
  			stopSFX("fx_" .. GetLuaObject("o3d_partor_col01").partName5)
  			
  			startSFX("fx_end")
  			startSFX("camfx_flash")
	  		EndL5Race(FALSE)
  		end
  		
	end
end

-- Function 'End'
function L5lua:End()

end

-- Function 'Notify'
function L5lua:Notify(event,param)
  	
  	if event == TM_RACE_STARTS then
  		SetLimitTime(0, 0, TIME_INIT)
		clockL5.Continue(clockL5)
		DisplayMsgCata(273)
		
		StartFadeTextIG(279, MSG_TARG_SIZE, 0, 255, 0, 255, 0, -1, MSG_TARG_POS_Y)
		
		dist1 = DistanceEntityToEntity("t_pos1", "t_pos2")
		dist2 = dist1 + DistanceEntityToEntity("t_pos2", "t_pos3")
		dist3 = dist2 + DistanceEntityToEntity("t_pos3", "t_pos4")
		dist4 = dist3 + DistanceEntityToEntity("t_pos4", "t_pos1")
		
		L5start = TRUE
  	end

	if event == TM_ENTITY_MORT and param.name=="Player1" then
		EndL5Race(FALSE)
		KillEntity(param.name)
	end
  	
end


-- Function 'Notify'
function L5lua:Clock(Id)

	EndRaceClock(Id)

end