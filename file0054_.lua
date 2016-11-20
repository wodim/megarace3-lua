
-- ........................................................
-- ................... Gestion du temps ...................

-- Temps alloué initialement (en s)
TIME_INIT			= 130

-- Bonus de temps
TIME_BONUS_1			= 30

-- Temps alloué (change en fonction des bonus)
timeL6				= TIME_INIT

-- Chrono global
clockL6				= clone(LUACLOCK)

-- Réglage pb son Ps2
TIME_LATENCE			= 0.5


-- ......................................................
-- ................... Poupées russes ...................

-- Vie
PR_LIFE				= 10

-- Facteur Missile
PR_FACT_MISS			= 100

-- Dégats
PR_COL_LIFE			= 20

-- Temps entre chaque déclenchement anim
PR_ANIM_TIME			= 0.4


-- ..................................................
-- ................... Gants Boxe ...................

-- Dégats
GT_COL_LIFE			= 200
GT_COL2_LIFE			= 70

-- Temps avant premier déclanchement (en s)
-- Première série
GT_FIRST_TIME_1			= 0.5
GT_FIRST_TIME_2			= 1
GT_FIRST_TIME_3			= 1.5
GT_FIRST_TIME_4			= 2
GT_FIRST_TIME_5			= 2.5
GT_FIRST_TIME_6			= 3
GT_FIRST_TIME_7			= 3.5
-- Deuxième série
GT_FIRST_TIME_8			= 0
GT_FIRST_TIME_9			= 1
GT_FIRST_TIME_10		= 0
GT_FIRST_TIME_11		= 1
GT_FIRST_TIME_12		= 0
GT_FIRST_TIME_13		= 1

-- Temps entre chaque déclenchement (en s)
-- Première série
GT_INTER_TIME_1			= 1
GT_INTER_TIME_2			= 1
GT_INTER_TIME_3			= 1
GT_INTER_TIME_4			= 1
GT_INTER_TIME_5			= 1
GT_INTER_TIME_6			= 1
GT_INTER_TIME_7			= 1
-- Deuxième série
GT_INTER_TIME_8			= 2
GT_INTER_TIME_9			= 2
GT_INTER_TIME_10		= 2
GT_INTER_TIME_11		= 2
GT_INTER_TIME_12		= 2
GT_INTER_TIME_13		= 2


-- Synchro Anim / Trans (pour gestion coll)
-- Temps
GT_TRANS_T0			= 1
GT_TRANS_T1			= 0.08
GT_TRANS_T2			= 0.20
GT_TRANS_T3			= 0.23334
GT_TRANS_T4			= 0.38889

-- Force
GT_TRANS_V1			= 1900000
GT_TRANS_V2			= -160000
GT_TRANS_V3			= 80000
GT_TRANS_V4			= -100000


-- .............................................
-- ................... Tank ...................

-- Anim
TK_ANIM_RATIO			= 0.125

-- Durée Fx (en s)
TK_FX_DUR			= 4

-- Dégats appliqué quand le joueur entre dans le tank
TK_LIFE_LOST			= 50
TK_NRJ_LOST			= 0
-- Pourcentage de la vitesse que le pod garde quand il entre dans le train (75 -> 75% de sa vitesse init; attention 0 -> 100%)
TK_SPEED_LOST			= 1
TK_SPEED_MAX			= -0.6
TK_ACC_MAX			= -0.9
TK_GRIP_MAX			= -0.5


-- ............................................
-- ................... Loco ...................

-- Dégats appliqués tant que le pod est dans le train
LOCO_LIFE_LOST			= -3
LOCO_NRJ_LOST			= -1
-- Dégats appliqué quand le joueur entre dans le train
LOCO_LIFE_LOST_ENTER		= -50
LOCO_NRJ_LOST_ENTER		= 0
-- Pourcentage de la vitesse que le pod garde quand il entre dans le train (75 -> 75% de sa vitesse init; attention 0 -> 100%)
LOCO_SPEED_LOST			= 1
LOCO_SPEED_MAX			= -0.6
LOCO_ACC_MAX			= -0.9
LOCO_GRIP_MAX			= -0.5

-- Anim
LOCO_ANIM_RATIO			= 0.33334


-- .............................................
-- ................... Clown ...................

-- Anim
CLOWN_ANIM_RATIO		= 2

-- .............................................
-- ................... Soldier .................

-- Dégats
SOL_LIFE_LOST			= -200
SOL_NRJ_LOST			= 0
-- Pourcentage de la vitesse que le pod garde quand il entre dans le train (75 -> 75% de sa vitesse init; attention 0 -> 100%)
SOL_SPEED_LOST			= 1

-- Temps entre chaque tir (en s), ce temps sera ajouté à celui de l'anim
-- Si ce temps est trop peu important, l'fx d'impact risque d'être coupé
SOL_SHOOT_T			= 0

-- Paramètres du tir pour chaque soldat
-- Intensité de la Gravité
SOL_SHOOT_G			= 100000
-- Intensité force (réglés de manière à tirer au milieu de la piste)
SOL1_SHOOT_F			= 300
SOL2_SHOOT_F			= 200
SOL3_SHOOT_F			= 420
-- Variation intensité force
SOL1_SHOOT_F_VAR		= 0
SOL2_SHOOT_F_VAR		= 0
SOL3_SHOOT_F_VAR		= 0
-- Variation dans l'angle de tir (en degrés)
SOL1_SHOOT_A_VAR		= 0
SOL2_SHOOT_A_VAR		= 0
SOL3_SHOOT_A_VAR		= 0

--
SOL_TIME1			= 0.6
SOL_TIME2			= 0.93
SOL_TIME3			= 0.8

SOL_DUR1			= 0.3
SOL_DUR2			= 0.3
SOL_DUR3			= 0.3

-- Paramètres vibration pod
-- Durée (en ms)
SOL_VIB_DUR			= 1000
-- Type de vibrations (1 = avant/arrière ; 2 = gauche/droite ; 3 = les deux)
SOL_VIB_TYPE			= 2
-- Intensité pitch
SOL_VIB_PITCH_I			= 0
-- Frequence pitch
SOL_VIB_PITCH_F			= 0
-- Intensité roll
SOL_VIB_ROLL_I			= 30000
-- Frequence roll
SOL_VIB_ROLL_F			= 10



-- .................................................
-- ................... Fonctions ...................

-- Function 'SolActive'
function SolActive(solName)
	
	StartEntityAnim(solName, "small_01", -1, 1, 1)
	GetLuaObject(solName).enable = TRUE
	
	JoueSon3D("SoldaPOS", solName, FALSE, -1)
	
end

-- Function 'SolDesactive'
function SolDesactive(solName)
	
	GetLuaObject(solName).enable = FALSE
	PichnetteStop("small_pichnette", GetLuaObject(solName).projName)
	
end


-- Function 'SolSendMissile'
function SolSendMissile(solName)
	
	StartEntityAnim(solName, "small_02", -1, 1, 1)
	PichnetteStart("small_pichnette", GetLuaObject(solName).projName)
	startSFX(GetLuaObject(solName).fx_bille)
	--GetLuaObject(solName).pod_coll = FALSE
	--GetLuaObject(solName).find_coll = FALSE
	
	StartClock("CURRENT", GetLuaObject(solName).time, 1)
	
	--EnableCollisionDetection(GetLuaObject(solName).projName, TRUE)
	
	StoppeSon("SoldaTIR", solName)
	JoueSon3DOnAtomic("SoldaTIR", solName, "emitter_small", FALSE, -1)
	
end

-- Function 'SolImpactPod'
function SolImpactPod(solName)

	if GetLuaObject(solName).find_coll == FALSE then
		
		GetLuaObject(solName).find_coll = TRUE
		GetLuaObject(solName).pod_coll = FALSE
			
		--PrintDebug("Touche Pod")
			
		PodVibrator("Player1", SOL_VIB_PITCH_I, SOL_VIB_PITCH_F, SOL_VIB_ROLL_I, SOL_VIB_ROLL_F, SOL_VIB_DUR, SOL_VIB_TYPE)
		
		DiminishSpeed("Player1", SOL_SPEED_LOST)
		NotifyToEntiy("Player1", TE_ADD_LIFE_WITH_SHIELD, SOL_LIFE_LOST)
		NotifyToEntiy("Player1", TE_ADD_ENERGIE, SOL_NRJ_LOST)
	end
end

-- Function 'SolImpactMissile'
function SolImpactMissile(solName)
	
	--PrintDebug("Impact")
	
	StoppeSon("SoldaIMP", GetLuaObject(solName).impactName)
	JoueSon3D("SoldaIMP", GetLuaObject(solName).impactName, FALSE, -1)
		
	--EnableCollisionDetection(GetLuaObject(solName).projName, FALSE)
	
	GetLuaObject(solName).pod_coll = TRUE
		
	PichnetteStop("small_pichnette", GetLuaObject(solName).projName)
		
	stopSFX(GetLuaObject(solName).fx_bille)
	stopSFX(GetLuaObject(solName).fx_impact)
	startSFX(GetLuaObject(solName).fx_impact)
	
	StartClock("CURRENT", GetLuaObject(solName).dur, 2)
	
end

	
-- Function 'GantInit'
function GantInit(gantName)
	
	LoadEntityAnim(gantName, "gant_full")
	
	CreateEventTranslation(GetLuaObject(gantName).transName, "t_gants_on")
	TranslationAddKeyFrame(GetLuaObject(gantName).transName, GT_TRANS_V1, 0, -1, 0, GT_TRANS_T1, 1)
	TranslationAddKeyFrame(GetLuaObject(gantName).transName, GT_TRANS_V2, 0, -1, 0, GT_TRANS_T2, 1)
	TranslationAddKeyFrame(GetLuaObject(gantName).transName, GT_TRANS_V3, 0, -1, 0, GT_TRANS_T3, 1)
	TranslationAddKeyFrame(GetLuaObject(gantName).transName, GT_TRANS_V4, 0, -1, 0, GT_TRANS_T4, 1)
	
	TranslationAttachEntity(GetLuaObject(gantName).transName, GetLuaObject(gantName).colName, GT_TRANS_V1, 0, -1, 0)

end

	
-- Function 'GantDisable'
function GantDisable(gantName)
	
	GetLuaObject(gantName).enable = FALSE
		
	StopEntityAnim(gantName, "gant_full")	
	TranslationStopEntity(GetLuaObject(gantName).transName, GetLuaObject(gantName).colName)
	EnableCollisionDetection(GetLuaObject(gantName).colName, FALSE)
	EnableCollisionDetection(GetLuaObject(gantName).colName2, FALSE)
end

	
-- Function 'GantEnable'
function GantEnable(gantName, time)
	
	GetLuaObject(gantName).enable = TRUE
	
	EnableCollisionDetection(GetLuaObject(gantName).colName, TRUE)
	EnableCollisionDetection(GetLuaObject(gantName).colName2, TRUE)
	StartClock(gantName, time, 0)
end


-- Function 'GantPrepare'
function GantPrepare(gantName)

	--PrintDebug("PreparePunch")
		
	TranslationStopEntity(GetLuaObject(gantName).transName, GetLuaObject(gantName).colName)
	--EnableCollisionDetection(GetLuaObject(gantName).colName, TRUE)
	MoveEntity(GetLuaObject(gantName).colName, GetLuaObject(gantName).colName2, "Col_Gant", 0, 0, 0)
	
	StartClock(gantName, GetLuaObject(gantName).punchTime, 0)
	
end


-- Function 'GantPunch'
function GantPunch(gantName)

	--PrintDebug("GantPunch")
	
	StartEntityAnim(gantName, "gant_full", -1, 1, 1)
	
	TranslationStartEntity(GetLuaObject(gantName).transName, GetLuaObject(gantName).colName)
	EnableCollisionDetection( GetLuaObject(gantName).colName, TRUE)
	
	JoueSon3D("GantMOVE", gantName, FALSE, -1)
	
end


-- .............................................
-- ................ Flag fin course ............

L6end	= FALSE

-- Function 'EndL6Race'
function EndL6Race(win)

	if L6end == TRUE then
		return
	end
	
	L6end = TRUE
	
  	clockL6.Pause(clockL6)
  	StopChrono("Player1")
	
	if win == TRUE then
		setCamera("t_end", "Player1")
		AfficheWrongWay(FALSE)
		DiminishSpeed("Player1", 0.5)
		DisplayMsgCata(278)
		setVideo( "sequence09", "Sequence_09" )
	else
		DisplayMsgCata(277)
		setVideo( "sequence10", "sequence_10" )
	end
	
	EndRace(win)
	
end



-- .................................................
-- ................... Fonctions L6 ................

L6lua={}

-- Function 'Init'
function L6lua:Init()

  	PrintDebug("Track L6 init ...")

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)
	SetDrawTarget(FALSE)
	
  	SetLimitTime(0, 0, timeL6)
  	
  	SetTotalLimitTime(0, 0, TIME_INIT + TIME_BONUS_1, FALSE)
  	SetCalibrateTime(20)  
	
  	clockL6.Start(clockL6)
  	clockL6.Pause(clockL6)
  	
  	ChargeSon("SoldaTIR")
  	ChargeSon("SoldaPOS")
  	ChargeSon("SoldaIMP")
  	ChargeSon("PoupIMP")
  	ChargeSon("PoupMOV")
  	ChargeSon("TankMOVE")
  	ChargeSon("GantMOVE")
  	ChargeSon("GantATT")
  	ChargeSon("TrainIMP")
  	ChargeSon("TrainMOV")
  	ChargeSon("ImpSHIP")
  	
  	ChargeSon("J_Repl02")
  	--ChargeSon("MenuVAL")

	JoueFluxMusique("TOyLand", 3, TRUE)
	
	AutoriseWrongWay(FALSE)
  	
end

-- Function 'Update'
function L6lua:Update()

  	--PrintDebug("Track L6 update ...")
  	
  	local time = clockL6.Time(clockL6) / 1000
  	  	
  	if time >= timeL6 then
  		EndL6Race(FALSE)
  	end
  	
end

-- Function 'End'
function L6lua:End()

  	PrintDebug("Track L6 end ...")
  	
end


-- Function 'Notify'
function L6lua:Notify(event, param)

  	PrintDebug("Track L6 notify ...")
  	
  	if event == TM_RACE_STARTS then
  	
  		SetLimitTime(0, 0, timeL6)
  		clockL6.Continue(clockL6)
		DisplayMsgCata(276)
  		  	
	elseif event == TM_ENTITY_MORT then
	
		if param.name=="Player1" then
			EndL6Race(FALSE)
			KillEntity(param.name)
		end
		
	end
  	
end


-- Function 'Clock'
function L6lua:Clock(Id)

	EndRaceClock(Id)

end