-- ------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------
TE_NOTHING						= 0
TE_ENTER_IN_PORTION				= 1
TE_NEWLAP						= 2
TE_ADD_MAXLIFE					= 3
TE_ADD_MAXENERGIE				= 4
TE_ADD_LIFE						= 5
TE_ADD_ENERGIE					= 6
TE_ADD_DAMAGE_COLL_FACTOR		= 7
TE_ADD_DAMAGE_MISSILE_FACTOR	= 8
TE_ADD_REGENERATION_NRJ			= 9
TE_ADD_REGENERATION_VIE			= 10
TE_MORT							= 11
TE_CRASH						= 12
TE_POD_COLLISION				= 13
TE_POD_COLLISION_MISSILE		= 14
TE_MODULE_ADD_CONSO				= 15
TE_ADD_TIME_CHGT_MODULE			= 16
TE_SET_COMBO_ATTACK				= 17
TE_SET_COMBO_SPEED				= 18
TE_SET_COMBO_SHIELD				= 19
TE_ACTIVE_MODULE				= 20
TE_UNACTIVE_MODULE				= 21
TE_USE_SEC_BONUS				= 22
TE_NEW_POSITION					= 23
TE_ENTITY_COLLISION_MISSILE		= 24
TE_ENTITY_ANIM_FINISH			= 25
TE_ENTITY_COLLISION				= 26
TE_SET_LIFE_DAMAGE_LIMIT_RATIO	= 27
TE_SET_LIFE_DAMAGE_VIBRATION_RATIO	= 28
TE_POD_COLLISION_PHANTOM		= 29
TE_POD_SET_KILLER				= 30
TE_POD_UPDATE_SHOT				= 31
TE_SET_LIFE_DAMAGE_SMOKE_RATIO	= 32
TE_SET_NO_MORE_LIFE_RATIO		= 33
TE_SET_NO_MORE_NRJ_RATIO		= 34
TE_SET_LIFE						= 35
TE_SET_ENERGIE					= 36
TE_ADD_LIFE_WITH_SHIELD			= 38

-- ------------------------------------------------------------------------------------------------------------------
-- enum MESSAGE pour la track
-- ------------------------------------------------------------------------------------------------------------------
TM_POD_NEWLAP					= 0
TM_ENTITY_MORT					= 1
TM_RACE_STARTS					= 2
TM_TRACK_COLLISION_PHANTOM		= 3
TM_RACE_STOPS					= 4

-- ------------------------------------------------------------------------------------------------------------------
-- enum MESSAGE pour les entites
-- ------------------------------------------------------------------------------------------------------------------
TM_ENTITY_COLLISION_MISSILE		= 0
TM_ENTITY_ANIM_FINISH			= 1
TM_ENTITY_COLLISION				= 2
TM_POD_COLLISION_PHANTOM		= 3

TM_ENTITY_DEAD					= 4
TM_POD_SMOKE_START				= 5
TM_POD_SMOKE_END				= 6
TM_ENTITY_LEFT_EVENT			= 7

-- ------------------------------------------------------------------------------------------------------------------
-- enum MESSAGE pour les entites d'interface
-- ------------------------------------------------------------------------------------------------------------------
TI_GRAB_END						= 1

-- ------------------------------------------------------------------------------------------------------------------
-- structure message
-- ------------------------------------------------------------------------------------------------------------------
TS_POD_NEWLAP = {name,time}
TS_ENTITY_MORT = {name}

-- ------------------------------------------------------------------------------------------------------------------
-- enum platform
-- ------------------------------------------------------------------------------------------------------------------
PLATFORM_PC				= 0
PLATFORM_PS2			= 1

-- ------------------------------------------------------------------------------------------------------------------
-- enum control
-- ------------------------------------------------------------------------------------------------------------------
UP_CTRL					= 0
DOWN_CTRL				= 1
LEFT_CTRL				= 2
RIGHT_CTRL				= 3
BRAKE_CTRL				= 4
BRAKELEFT_CTRL				= 5
BRAKERIGHT_CTRL			= 6
FIRE0_CTRL				= 7
FIRE1_CTRL				= 8
FIRE2_CTRL				= 9
FIRE3_CTRL				= 10
FIRE4_CTRL				= 11
MODULE_ATTACK_CTRL			= 12
MODULE_SHIELD_CTRL			= 13
MODULE_SPEED_CTRL			= 14
USE_BONUS_CTRL			= 15
SWAP_MODULE_CTRL			= 16
SWAP_VIEW_CAM_CTRL		= 17
-- ------------------------------------------------------------------------------------------------------------------
-- enum stat
-- ------------------------------------------------------------------------------------------------------------------
STAT_SHOT_NUM				= 0
STAT_FAST_TIME_LAP			= 1
STAT_LAST_TIME_LAP			= 2
STAT_MAX_SPEED				= 3
STAT_AVERAGE_SPEED			= 4
STAT_ATT_MOD_TIME			= 5
STAT_VIT_MOD_TIME			= 6
STAT_DEF_MOD_TIME			= 7
STAT_SEC_BONUS_NUM			= 8
STAT_AUDIMAT				= 9
STAT_TOTAL_TIME				= 10
STAT_BEST_RESIST_TIME			= 11	

-- ------------------------------------------------------------------------------------------------------------------
-- enum bonus plus
-- ------------------------------------------------------------------------------------------------------------------
BP_LOOP						= 0 -- Looping sans se cogner
BP_SPIN						= 1 -- Vrille sans se cogner
BP_OVERTAKING				= 2 -- Depassement(s) en un temps limite
BP_SHOOT					= 3 -- Shoot(s) en un temps limite
BP_USEFUL_SHIELD			= 4 -- Shield util

-- ------------------------------------------------------------------------------------------------------------------
-- enum bonus neg
-- ------------------------------------------------------------------------------------------------------------------
BN_NO_TURN					= 0
BN_TOP_SPEED				= 1
BN_BLIND					= 2
BN_BLOCK_MODULE				= 3
BN_INVERSE_COMMAND			= 4
BN_STEAL					= 5
BN_REPULSION				= 6
BN_MOTOR_UP					= 7

-- ------------------------------------------------------------------------------------------------------------------
-- enum couleur interface-game
-- ------------------------------------------------------------------------------------------------------------------
WRONG_WAY_COLOR				= 0
RANK_COLOR					= 1
SPEED_COLOR					= 2
LAP_COLOR					= 3
TIME_COLOR					= 4
LAST_TIME_COLOR				= 5
MODE_COLOR					= 6
PERCENT_COLOR				= 7
BONUS_PLUS_COLOR			= 8
GO_COLOR					= 9
FINISH_COLOR				= 10
PODNAME_COLOR				= 11
PODNAMET1_COLOR				= 12
PODNAMET2_COLOR				= 13
RESPAWN_COLOR				= 14



BEST_LAP		= 0
BEST_TIME		= 1
BEST_KILL		= 2
BEST_AUDIMAT	= 3
BEST_PLACE		= 4


-- ------------------------------------------------------------------------------------------------------------------
-- enum backup messages
-- ------------------------------------------------------------------------------------------------------------------
BM_OK							= 1
BM_SERIOUS_ERROR				= -1

BM_NO_MEDIA_INSERTED			= -2
BM_NO_VALID_MEDIA				= -3
BM_MEDIA_CORRUPTED				= -4
BM_MEDIA_NO_SAVE				= -5
BM_MEDIA_NOT_FORMATED			= -6
BM_CANCEL_BY_CHANGE				= -7

BM_NOT_ENOUGH_FREE_BLOCKS		= -8
BM_MC_ERROR_WHILE_FORMATED		= -9
BM_MC_ALREADY_FORMATED			= -10


-- ------------------------------------------------------------------------------------------------------------------
-- enum mode de jeu
-- ------------------------------------------------------------------------------------------------------------------
MODE_ARCADE						= 2
MODE_CATASTROPHE				= 3
MODE_CARRIERE					= 4

-- ------------------------------------------------------------------------------------------------------------------
-- Fonte...
-- ------------------------------------------------------------------------------------------------------------------
S_FONTE		= "AB16"
S_TGF		= 62
S_GF		= 40
S_MF		= 22
S_PF		= 20
S_MUMF		= 18
S_MUPF		= 18
S_TPF		= 28
S_LF		= 16
S_Resmul	= {}
S_Resmul[0]	= {r1= 0, v1 = 0, b1 = 0, a1 =255, r2 = 0, v2 = 0, b2 = 0, a2 = 255}
S_Resmul[1]	= {r1= 255, v1 = 0, b1 = 0, a1 =255, r2 = 255, v2 = 0, b2 = 0, a2 = 255}
S_Resmul[2]	= {r1= 0, v1 = 0, b1 = 255, a1 =255, r2 = 0, v2 = 0, b2 = 255, a2 = 255}
S_nsel		= {r1= 0, v1 = 0, b1 = 0, a1 =255, r2 = 0, v2 = 0, b2 = 0, a2 = 255}
S_sel		= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_selt		= {r1= 255, v1 = 255, b1 = 255, a1 =100, r2 = 255, v2 = 255, b2 = 255, a2 = 100}
S_selg		= {r1= 75, v1 = 75, b1 = 75, a1 =255, r2 = 75, v2 = 75, b2 = 75, a2 = 255}
S_bsel		= {r1= 75, v1 = 106, b1 = 237, a1 = 255, r2 = 75, v2 = 106, b2 = 237, a2 = 255}
S_bback		= {r1= 60, v1 = 197, b1 = 88, a1 =255, r2 = 60, v2 = 197, b2 = 88, a2 = 255}
Pbcolor		= {r1= 100, v1 = 200, b1 = 250, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255, r3 = 125, v3 = 130, b3 = 155, a3 = 50}
S_FPP		= 22
S_selpp		= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}

S_Fmi		= 30
S_selmi		= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_nselmi	= {r1= 0, v1 = 0, b1 = 0, a1 =255, r2 = 0, v2 = 0, b2 = 0, a2 = 255}

-- Info des sauvegardes
S_colorPl	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_colorPod	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_colorAtt	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_colorDef	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_colorVit	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}

S_LSF		= 33

-- Password
S_PSW_F1	= 30
S_PSW_F2	= 26
S_PSW_C1	= {r1= 255, v1 = 255, b1 = 200, a1 =255, r2 = 255, v2 = 255, b2 = 200, a2 = 255}
S_PSW_C2	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}

-- Chat
S_CHAT_F	= 12
S_CHAT_C0	= {r1= 130, v1 = 150, b1 = 165, a1 =255, r2 = 130, v2 = 150, b2 = 165, a2 = 255}
S_CHAT_C1	= {r1= 150, v1 = 255, b1 = 220, a1 =255, r2 = 150, v2 = 255, b2 = 220, a2 = 255}
S_CHAT_C2	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}

-- Reseau
S_RSO_CREATE_S	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_RSO_CREATE_NS	= {r1= 0, v1 = 200, b1 = 80, a1 =255, r2 = 0, v2 = 200, b2 = 80, a2 = 255}

S_RSO_JOIN_S	= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_RSO_JOIN_NS	= {r1= 120, v1 = 230, b1 = 255, a1 =255, r2 = 120, v2 = 230, b2 = 255, a2 = 255}

S_RSO_PSW_S		= {r1= 255, v1 = 255, b1 = 255, a1 =255, r2 = 255, v2 = 255, b2 = 255, a2 = 255}
S_RSO_PSW_NS	= {r1= 255, v1 = 0, b1 = 0, a1 =255, r2 = 255, v2 = 0, b2 = 0, a2 = 255}

-- ------------------------------------------------------------------------------------------------------------------
-- Variables ...
-- ------------------------------------------------------------------------------------------------------------------
FALSE			= 0
TRUE			= 1


-- ------------------------------------------------------------------------------------------------------------------
-- Defines Pop-up
-- ------------------------------------------------------------------------------------------------------------------
-- Valeurs de retour
POPUP_QUIT		= -1
POPUP_YES		= 1
POPUP_NO		= 2
POPUP_CHOICE_1	= 3
POPUP_CHOICE_2	= 4
POPUP_CHOICE_3	= 5
POPUP_CHOICE_4	= 6
POPUP_CHOICE_5	= 7

-- Etats de la popup
POPUP_STATE_NONE	= 0
POPUP_STATE_YES_NO	= 1
POPUP_STATE_CHOICE	= 2
POPUP_STATE_WAIT	= 3
POPUP_STATE_QUIT	= 4

-- Mode confirmation par defaut
SetGlobalVariable("gPOPUP_state", POPUP_STATE_NONE)

function StartPopupByScript (popup, valuePopup, statePopup)
	SetGlobalVariable("gPOPUP_state", statePopup)
	StartPopup(popup, valuePopup)
end

function SetValuePopupByScript (valuePopup, statePopup)
	SetGlobalVariable("gPOPUP_state", statePopup)
	SetValuePopup(valuePopup)
end



-- ------------------------------------------------------------------------------------------------------------------
-- Affiche info arcade
-- ------------------------------------------------------------------------------------------------------------------
OldTrckname		="0"
temp0			= 0
temp1			= 0
temp2			= 0
temp3			= 0
temp4			= 0
temp5			= 0
temp6			= ""
temp7			= ""
chainearcade	= ""
nbnm			= ""
nblaps			= ""
nbenemys		= ""
btime			= ""
blap			= ""
binfo			= ""
mkill			= ""
temp10			= ""
temp11			= ""
temp12			= ""

-- Affiche info pod
OldPodname		= "0"
AffGar			= 1
garvmax			= ""
garaccel		= ""
garbrake		= ""
garhandle		= ""
garlife			= ""
garnrj			= ""
gartmp1			= 0
gartmp2			= 0
gartmp3			= 0
gartmp4			= 0
gartmp5			= 0
gartmp6			= ""
ATT				= 0
DEF				= 1
VIT				= 2

-- ------------------------------------------------------------------------------------------------------------------
-- Game global
-- ------------------------------------------------------------------------------------------------------------------
player			= ""
SetGlobalVariable("gFirstTime", TRUE)
SetGlobalVariable("gCanContinue", FALSE)
SetGlobalVariable("gCanLoad", FALSE)
SetGlobalVariable("gStartIntroVideo", TRUE)
-- Sauvegardes (Herve)
-- ------------------------------------------------------------------------------------------------------------------
LS_MODE_NONE		= 0
LS_MODE_LOAD		= 1
LS_MODE_SAVE		= 2
LS_MODE_DEL			= 3
LS_MODE_INIT		= 4
LS_MODE_FORMAT		= 5
LS_MODE_CONTINUE	= 6

LS_STATE_NONE		= 0
LS_STATE_ENTER		= 1
LS_STATE_QUIT		= 2
LS_STATE_WAIT		= 3
LS_STATE_SELECT		= 4
LS_STATE_LOAD		= 5
LS_STATE_SAVE		= 6
LS_STATE_DEL		= 7
LS_STATE_OVERWRITE	= 8
LS_STATE_FORMAT		= 9
LS_STATE_NEED_COUNT	= 10
LS_STATE_RETRY		= 11
LS_STATE_INIT		= 12

LS_NO				= 0
LS_YES				= 1

gLS_mode			= LS_MODE_NONE
gLS_state			= LS_STATE_NONE

gLS_count			= 0

gLS_backupNum		= 0
gLS_gameName		= ""

gExistGame			= nil

gGoToMenu			= nil

gLS_chosenBackup	= 0
gLS_backupOffset	= 0
gLS_backupTab		= {}

function MakeBackupList ()
	local i = 0
	while i<gLS_backupNum do
		GoToPlayerSaveAt(i)
		gLS_backupTab[i+1] = GetPlayerSaveNamePSI()
		i = i + 1
	end
	GoToPlayerSaveAt(0)
end

function InitPlayerBackup (playerName)

	player = playerName
	SetPlayerName(playerName)

	ResetPracticeResult()

	SetTrackState(MODE_ARCADE, 0)

	SetTrackState(MODE_CATASTROPHE, 0)

	SetTrackState(MODE_CARRIERE, 0)

	SetCSFlag(0)
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

end


-- ------------------------------------------------------------------------------------------------------------------
-- Network
-- ------------------------------------------------------------------------------------------------------------------
affng			= 0
ingmax			= 0
ing				= 0
lng				= {nng ,nnt ,nnbp , nmode, ntype, nstatus, nping, npwd, ntypgame, nmodegame}
Sessname		= ""
PwdNet			= ""


-- Nom du joueur
NMEI1			= 0
NMEI2			= 0
NMEI3			= 0
NMEI4			= 0
NMEI5			= 0
NMEI6			= 0
NMEI7			= 0
NMEI8			= 0
NMEI9			= 0
NMEI10			= 0
NMEI11			= 0

gComeFromNME	= nil



-- Input global
PLAYER_1		= 0
PLAYER_2		= 1
gCurConfig		= 0


-- index des noms de pods / track arcade

Lp1 = {61,63,60,66,67,64,63}
Lp2 = {60,66,65,63,65,66,62}
Lp3 = {62,64,66,61,62,60,66}




-- Module

ListModAtt = {
"Diamond_Ray",
"Cocatrix_Eyes",
"Spines_Bee",
"Damocles",
"Angels_Light",
"Dagger_of_Justice",
"Iron_Claw"

}

ListModDef = {
"Quezacoatls_Feather",
"Titans_Skin",
"Unicorns_Protection",
"Angels_Blessing",
"Sight_of_Ghost",
"Vampires_Sign",
"Gillettes_Grid"
}

ListModVit = {
"Hermes_Spirit",
"Scale_of_Blade",
"Vampires_Celerity",
"Hellcrush",
"Sharks_Power",
"Gazelles_Power",
"Unicorns_Ride"
}



-- Module par pod ....
ModAtt = {
1,
2,
3,
3,
1,
2,
2,
3,
2,
1,
3,
1
}

ModDef = {
1,
2,
1,
3,
2,
1,
2,
1,
3,
1,
3,
2
}

ModVit = {
1,
2,
3,
3,
2,
1,
1,
2,
3,
2,
2,
3
}

-- Config PS2
Configpad1 = {
136,
119,
120,
112,
120,
113,
118,
123,
120,
135,
114,
111,
120,
110,
120,
120,
121
}

Configpad2 = {
136,
118,
120,
112,
120,
113,
120,
123,
120,
135,
114,
120,
119,
110,
111,
120,
121
}

Configpad3 = {
136,
119,
120,
112,
120,
113,
118,
123,
120,
135,
114,
116,
117,
110,
115,
120,
121
}


-- fonction d'init d'une structure message
function InitPodNewLap (n,t)
	TS_POD_NEWLAP.name = n
	TS_POD_NEWLAP.time = t
end

function InitEntityMort (n)
	PrintDebug(n)
	TS_ENTITY_MORT.name = n
end


-- Fonction d'affichages des infos sur la page ARCADE
function AfficheInfoArcade(trckname)

	if (OldTrckname ~= trckname) then
		
		nbnm			= GetText(35)
		nblaps			= GetText(37)
		nbenemys		= GetText(36)
		btime			= GetText(38)
		blap			= GetText(39)
		mkill			= GetText(40)
		

		LoadTrackInfo(trckname);
		temp0 = GetTrackInfo(trckname, "Length")
		temp1 = GetTrackInfo(trckname, "Lap_num")
		temp2 = GetTrackInfo(trckname, "Competitor_num")
		temp10 = GetTrackBestName(BEST_TIME, GetGameMode(), trckname)
		temp3 = GetTrackBestValue(BEST_TIME, GetGameMode(), trckname)
		
		temp11 = GetTrackBestName(BEST_LAP, GetGameMode(), trckname)
		temp4 = GetTrackBestValue(BEST_LAP, GetGameMode(), trckname)
		temp12 = GetTrackBestName(BEST_KILL, GetGameMode(), trckname)
		temp5 = GetTrackBestValue(BEST_KILL, GetGameMode(), trckname)
		temp6 = GetTrackInfo(trckname, "Nom")

		if temp3 == nil then
			temp3 = GetText(34)
			temp10 = " "
		end
		if temp4 == nil then
			temp4 = GetText(34)
			temp11 = " "
		end
		if temp5 == nil then
			temp5 = GetText(34)
			temp12 = " "
		end


		OldTrckname = trckname
	end


	PrintStringOn("ARC_TXT_NOM_INFO" ,temp6		, S_FONTE, S_MF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
	PrintStringOn("ARC_TXT_circuit01",nbnm		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT02",temp0		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT03",nblaps	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT04",temp1		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT05",nbenemys	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT06",temp2		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT07",btime		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT08",temp3		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT08",temp10		, S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintStringOn("ARC_TXT_CIRCUIT09",blap		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT10",temp4		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT10",temp11		, S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintStringOn("ARC_TXT_CIRCUIT11",mkill		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT12",temp5		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("ARC_TXT_CIRCUIT12",temp12		, S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)


	
 
end

-- Fonction de lancement d'une course depuis la page Arcade
function LanceCourseArcade(idx)

	local sta	= idx*2
	SetEtat(sta)

end

function AfficheInfoCata(trckname)

	if (OldTrckname ~= trckname) then
		
		btime			= GetText(38)
		baudimat		= GetText(299)
		binfo			= GetUsedTrackIndex() + 300

		LoadTrackInfo(trckname)
		temp10 = GetTrackBestName(BEST_TIME, GetGameMode(), trckname)
		temp4 = GetTrackBestValue(BEST_TIME, GetGameMode(), trckname)
		temp5 = GetTrackBestValue(BEST_AUDIMAT, GetGameMode(), trckname)
		temp11 = GetTrackBestName(BEST_AUDIMAT, GetGameMode(), trckname)
		temp6 = GetTrackInfo(trckname, "Nom")
		
		if temp4 == nil then
			temp4 = GetText(34)
			temp10 = " "
		end
		if temp5 == nil then
			temp5 = GetText(34)
			temp11 = " "
		end

		HideInterfaceEntity("cat_ani_"..temp7)
		temp7 = GetTrackInfo(trckname, "Pod")
		ShowInterfaceEntity("cat_ani_"..temp7)
		local obj = "cat_ani_"..temp7
		local ani = temp7.."_inter"
		StartEntityAnim(obj,ani,0,-1,1)

		OldTrckname = trckname
	end




	PrintStringOn("CAT_TXT_NOM_INFO" ,temp6		, S_FONTE, S_MF,"LEFT"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
	PrintTextOn("CAT_INFO",	binfo	, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAT_TXT_CIRCUIT09",btime		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAT_TXT_CIRCUIT10",temp4		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAT_TXT_CIRCUIT10",temp10		, S_FONTE, S_MF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAT_TXT_CIRCUIT11",baudimat		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAT_TXT_CIRCUIT12",temp5		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAT_TXT_CIRCUIT12",temp11		, S_FONTE, S_MF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)


	
 
end
function LanceCourseCata(idx)

	local sta	= idx*2
	SetEtat(sta)

end




function AfficheInfoCarriere(trckname)

	if trckname == "or02" then
		nbnm			= GetText(680)
		nblaps			= ""
		nbenemys		= ""
		btime			= ""
		blap			= ""
		mkill			= ""
		temp0 = ""
		temp1 = ""
		temp2 = ""
		temp10 = ""
		temp3 = ""
		temp11 = ""
		temp4 = ""
		temp12 = ""
		temp5 = ""
		temp6 = ""
		temp10 = " "
		temp11 = " "
		temp12 = " "
		OldTrckname = trckname
		ChangeTexture("CAR_BT_ECRANTV","ARC_BT_ECRANTV",trckname)
	end

	if (OldTrckname ~= trckname) then
		
		nbnm			= GetText(35)
		nblaps			= GetText(37)
		nbenemys		= GetText(36)
		btime			= GetText(38)
		blap			= GetText(39)
		mkill			= GetText(40)
		

		LoadTrackInfo(trckname);
		temp0 = GetTrackInfo(trckname, "Length")
		temp1 = GetTrackInfo(trckname, "Lap_num")
		temp2 = GetTrackInfo(trckname, "Competitor_num")
		temp10 = GetTrackBestName(BEST_TIME, GetGameMode(), trckname)
		temp3 = GetTrackBestValue(BEST_TIME, GetGameMode(), trckname)
		
		temp11 = GetTrackBestName(BEST_LAP, GetGameMode(), trckname)
		temp4 = GetTrackBestValue(BEST_LAP, GetGameMode(), trckname)
		temp12 = GetTrackBestName(BEST_KILL, GetGameMode(), trckname)
		temp5 = GetTrackBestValue(BEST_KILL, GetGameMode(), trckname)
		temp6 = GetTrackInfo(trckname, "Nom")

		if temp3 == nil then
			temp3 = GetText(34)
			temp10 = " "
		end
		if temp4 == nil then
			temp4 = GetText(34)
			temp11 = " "
		end
		if temp5 == nil then
			temp5 = GetText(34)
			temp12 = " "
		end


		OldTrckname = trckname
		ChangeTexture("CAR_BT_ECRANTV","ARC_BT_ECRANTV",trckname)
	end


	PrintStringOn("CAR_TXT_NOM_INFO" ,temp6		, S_FONTE, S_MF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
	PrintStringOn("CAR_TXT_circuit01",nbnm		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT02",temp0		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT03",nblaps	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT04",temp1		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT05",nbenemys	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT06",temp2		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT07",btime		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT08",temp3		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT08",temp10		, S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintStringOn("CAR_TXT_CIRCUIT09",blap		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT10",temp4		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT10",temp11		, S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintStringOn("CAR_TXT_CIRCUIT11",mkill		, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT12",temp5		, S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintStringOn("CAR_TXT_CIRCUIT12",temp12		, S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintTextOn("CAR_TXT_CIRCUIT21",678, S_FONTE, S_PF,"CENTER"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	local value1 = GetPodNameAtRank(1)
	PrintStringOn("CAR_TXT_CIRCUIT13",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	local value2 = GetPodScoreAtRank(1).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT13",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(2)
	PrintStringOn("CAR_TXT_CIRCUIT14",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(2).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT14",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(3)
	PrintStringOn("CAR_TXT_CIRCUIT15",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(3).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT15",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(4)
	PrintStringOn("CAR_TXT_CIRCUIT16",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(4).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT16",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(5)
	PrintStringOn("CAR_TXT_CIRCUIT17",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(5).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT17",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(6)
	PrintStringOn("CAR_TXT_CIRCUIT18",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(6).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT18",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(7)
	PrintStringOn("CAR_TXT_CIRCUIT19",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(7).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT19",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value1 = GetPodNameAtRank(8)
	PrintStringOn("CAR_TXT_CIRCUIT20",value1 , S_FONTE, S_PF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	value2 = GetPodScoreAtRank(8).." "..GetText(679)
	PrintStringOn("CAR_TXT_CIRCUIT20",value2 , S_FONTE, S_PF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	
	
 
end
function LanceCourseCarriere(idx)

	local sta	= idx*2
	SetEtat(sta)

end


-- ------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------
function InitGarage(m,s)

	if (m == 2 or m == 7 or m == 8 or m == 9 or m == 10) then
		if s < 8 then
			local i = GetUsedTrackIndex() + 1

			local nmepod = GetText(Lp1[i])
			AddCompletePod(m,nmepod, ModAtt[Lp1[i]-59], ModDef[Lp1[i]-59], ModVit[Lp1[i]-59])
			SetPodAvailable(m, nmepod, 1)

			nmepod = GetText(Lp2[i])
			AddCompletePod(m,nmepod, ModAtt[Lp2[i]-59], ModDef[Lp2[i]-59], ModVit[Lp2[i]-59])
			SetPodAvailable(m, nmepod, 1)

			nmepod = GetText(Lp3[i])
			AddCompletePod(m,nmepod, ModAtt[Lp3[i]-59], ModDef[Lp3[i]-59], ModVit[Lp3[i]-59])
			SetPodAvailable(m, nmepod, 1)

			local i = 0
			while i < 12 do
				local nmepod = GetText(60+i)
				LoadPodInfo(nmepod)
				local objpod	= GetPodInfoProp(nmepod,"ObjI")
				local anipod	= GetPodInfoProp(nmepod,"AniI")
				local anipod2	= GetPodInfoProp(nmepod,"AniI").."01"
				LoadEntityAnim(objpod,anipod)
				LoadEntityAnim(objpod,anipod2)
				HideInterfaceEntity(objpod)
				i = i +1
			end

		else
			local i = 0
			while i < 12 do
				local nmepod = GetText(60+i)
				AddCompletePod(m,nmepod, ModAtt[i+1], ModDef[i+1], ModVit[i+1])
				
				if ((i-8) >= 0 and IsPodBonusActive(i - 8) == 1) then
					SetPodAvailable(m, nmepod, 1)
				elseif i < 8 then 
					SetPodAvailable(m, nmepod, 1) 
				else
					SetPodAvailable(m, nmepod, 0)
				end
				LoadPodInfo(nmepod)
				local objpod	= GetPodInfoProp(nmepod,"ObjI")
				local anipod	= GetPodInfoProp(nmepod,"AniI")
				local anipod2	= GetPodInfoProp(nmepod,"AniI").."01"
				LoadEntityAnim(objpod,anipod)
				LoadEntityAnim(objpod,anipod2)
				HideInterfaceEntity(objpod)
				i = i + 1
			end
		end
	end


	if (m == 4 or m == 11 or m == 12 or m == 13 or m == 14) then
		local i = 0
		while i < 12 do
			local nmepod = GetText(60+i)
			local matt = ModAtt[i+1]
			local mdef = ModDef[i+1]
			local mvit = ModVit[i+1]
			if GetCustumPod() == nmepod then
				if GetCustumAttMod()~= nil then matt = GetCustumAttMod() end
				if GetCustumDefMod()~= nil then mdef = GetCustumDefMod() end
				if GetCustumVitMod()~= nil then mvit = GetCustumVitMod() end
			end
			AddCompletePod(m,nmepod, matt, mdef, mvit)
			if ((i-8) >= 0 and IsPodBonusActive(i - 8) == 1) then
				SetPodAvailable(m, nmepod, 1)
			elseif i < 8 then 
				SetPodAvailable(m, nmepod, 1) 
			else
				SetPodAvailable(m, nmepod, 0)
			end
			LoadPodInfo(nmepod)
			local objpod	= GetPodInfoProp(nmepod,"ObjI")
			local anipod	= GetPodInfoProp(nmepod,"AniI")
			local anipod2	= GetPodInfoProp(nmepod,"AniI").."01"
			LoadEntityAnim(objpod,anipod)
			LoadEntityAnim(objpod,anipod2)
			HideInterfaceEntity(objpod)

			i = i + 1
		end
	end
	
	local i = 1
	while i < 8	do
		AddModule(m, ListModAtt[i], ATT)
		if ((i-4) >= 0 and IsAttModuleBonusActive (i - 4) == 1) then
			SetModuleAvailable(m, ListModAtt[i], ATT, 1)
		elseif i <4 then
			SetModuleAvailable(m, ListModAtt[i], ATT, 1)
		else
			SetModuleAvailable(m, ListModAtt[i], ATT, 0)
		end
		AddModule(m, ListModDef[i], DEF)
		if ((i-4) >= 0 and IsDefModuleBonusActive (i - 4) == 1) then
			SetModuleAvailable(m, ListModDef[i], DEF, 1)
		elseif i <4 then
			SetModuleAvailable(m, ListModDef[i], DEF, 1)
		else
			SetModuleAvailable(m, ListModDef[i], DEF, 0)
		end
		AddModule(m, ListModVit[i], VIT)
		if ((i-4) >= 0 and IsSpeedModuleBonusActive (i - 4) == 1) then
			SetModuleAvailable(m, ListModVit[i], VIT, 1)
		elseif i <4 then
			SetModuleAvailable(m, ListModVit[i], VIT, 1)
		else
			SetModuleAvailable(m, ListModVit[i], VIT, 0)
		end
		i = i + 1
	end
	InitAttModuleIt()
	InitDefModuleIt()
	InitVitModuleIt()


	InitPodIt()

	PrintDebug("Fin des inits ...")
	if (m == 4 or m == 11 or m == 12 or m == 13 or m == 14) then
		if GetCustumPod() ~= nil then
			local l = 0
			while (GetUsedPodName() ~= GetCustumPod() and l < 12) do
				NextPod()
				l = l + 1
			end
		end
	end
	local k = 0
	while (GetUsedModAttIndex() ~= (GetUsedPodAttModName() - 1) and k < 8) do 
		NextAttModule() 
		k = k + 1
	end
	k = 0 
	while (GetUsedModDefIndex() ~= (GetUsedPodDefModName() - 1) and k < 8) do 
		NextDefModule()
		k = k + 1
	end
	k = 0
	while (GetUsedModVitIndex() ~= (GetUsedPodVitModName() - 1) and k < 8) do 
		NextVitModule()
		k = k + 1
	end

end




function AfficheInfoGarage(pod)

	if (OldPodname ~= pod) then
		
		garvmax			= GetText(72)
		garaccel		= GetText(73)
		garbrake		= GetText(74)
		garhandle		= GetText(75)
		garlife			= GetText(76)
		garnrj			= GetText(77)

		if OldPodname ~= "0" then
			LoadPodInfo(OldPodname)
			local objpodt	= GetPodInfoProp(OldPodname ,"ObjI")
			local anipodt	= GetPodInfoProp(OldPodname,"AniI")
			StopEntityAnim(objpodt,anipodt)
			if OldPodname == "hy" then
				local meuh = GetLuaObject(objpodt).module1SFX
				stopSFX( meuh )
			end
			HideInterfaceEntity(objpodt)
		end
		
		LoadPodInfo(pod)
		gartmp1			= GetPodInfoProp(pod,"Nom")		

		local objpod	= GetPodInfoProp(pod,"ObjI")
		local anipod	= GetPodInfoProp(pod,"AniI").."01"
		ShowInterfaceEntity(objpod)
		StartEntityAnim(objpod,anipod,-1,1,1)
		if pod == "hy" then
			local meuh = GetLuaObject(objpod).module1SFX
			startSFX( meuh )
		end

		OldPodname = pod
		AffGar = 1	
	end

	if AffGar == 1 then
		AffGar = 0

		LoadAttModInfo(ListModAtt[GetUsedModAttIndex() + 1])
		LoadDefModInfo(ListModDef[GetUsedModDefIndex() + 1])
		LoadVitModInfo(ListModVit[GetUsedModVitIndex() + 1])

		UpdateConfAndCombo(pod, ListModAtt[GetUsedModAttIndex() + 1], ListModDef[GetUsedModDefIndex() + 1], ListModVit[GetUsedModVitIndex() + 1])

		gartmp2			= GetPodMaxSpeed() / 510 * 100 	
		gartmp3			= GetPodAccel() / 0.85 * 100
		gartmp4			= GetPodAerofreinGD() / 55800 *100
		gartmp5			= GetPodGrip() / 0.75 * 100
		gartmp6			= GetPodMaxLife() / 1770 * 100
		gartmp7			= GetPodMaxNrj() / 1800 * 100


		GetLuaObject("GAR_BT_CHOIXACTIF03").Nme = GetModInfo(ATT, ListModAtt[GetUsedModAttIndex() + 1], "Nom")
		GetLuaObject("GAR_BT_CHOIXACTIF04").Nme = GetModInfo(DEF, ListModDef[GetUsedModDefIndex() + 1], "Nom")
		GetLuaObject("GAR_BT_CHOIXACTIF05").Nme = GetModInfo(VIT, ListModVit[GetUsedModVitIndex() + 1], "Nom")

	end


	PrintStringOn("GAR_TXT_NOM_INFO" ,gartmp1	, S_FONTE, S_PF,"LEFT"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)


	PrintProgressBarOn("GAR_BT_CHOIXACTIF12", gartmp2, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
	PrintStringOn("GAR_BT_CHOIXACTIF12",garvmax	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintProgressBarOn("GAR_BT_CHOIXACTIF14", gartmp3, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
	PrintStringOn("GAR_BT_CHOIXACTIF14",garaccel	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	

	PrintProgressBarOn("GAR_BT_CHOIXACTIF16", gartmp4, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
	PrintStringOn("GAR_BT_CHOIXACTIF16",garbrake	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintProgressBarOn("GAR_BT_CHOIXACTIF18", gartmp5, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
	PrintStringOn("GAR_BT_CHOIXACTIF18",garhandle	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintProgressBarOn("GAR_BT_CHOIXACTIF20", gartmp6, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
	PrintStringOn("GAR_BT_CHOIXACTIF20",garlife	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintProgressBarOn("GAR_BT_CHOIXACTIF22", gartmp7, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
	PrintStringOn("GAR_BT_CHOIXACTIF22",garnrj	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	
 

	if IsEntitySelected("GAR_BT_CHOIXACTIF03") == 1 then
		PrintTextOn("GAR_BT_CHOIXACTIF10",56, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		local value = GetAMConso() / GetPodMaxNrj() * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF11", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF11",383, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = GetAMShootValue() / 600 * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF13", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF13",386, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = (0 + GetModInfo(ATT, ListModAtt[GetUsedModAttIndex() + 1], "DégatsE")) / 500 * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF15", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF15",389, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = GetModInfo(ATT, ListModAtt[GetUsedModAttIndex() + 1], "Type")
		PrintStringOn("GAR_BT_CHOIXACTIF10",value	, S_FONTE, S_MF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		if GetModInfo(ATT, ListModAtt[GetUsedModAttIndex() + 1], "Lock") == "oui" then
			value = GetText(390)
			PrintStringOn("GAR_TXT_INFODIVERSE",value	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		value = (0 + GetModInfo(ATT, ListModAtt[GetUsedModAttIndex() + 1], "Portée")) / 4000 * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF17", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF17",388, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		
		value = (0 + GetModInfo(ATT, ListModAtt[GetUsedModAttIndex() + 1], "Réactivation")) / 0.03
		PrintProgressBarOn("GAR_BT_CHOIXACTIF19", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF19",385, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	end

	if IsEntitySelected("GAR_BT_CHOIXACTIF04") == 1 then
		PrintTextOn("GAR_BT_CHOIXACTIF10",57, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		local value = GetDMConso() / GetPodMaxNrj() * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF13", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF13",383, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = (0 + GetModInfo(DEF, ListModDef[GetUsedModDefIndex() + 1], "Durée")) / 11 * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF15", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF15",384, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = (0 + GetModInfo(DEF, ListModDef[GetUsedModDefIndex() + 1], "Réactivation")) / 0.01
		PrintProgressBarOn("GAR_BT_CHOIXACTIF17", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF17",385, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = GetModInfo(DEF, ListModDef[GetUsedModDefIndex() + 1], "Type")
		PrintStringOn("GAR_BT_CHOIXACTIF10",value	, S_FONTE, S_MF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = GetModInfo(DEF, ListModDef[GetUsedModDefIndex() + 1], "Effet")
		value = GetText(0 + value)
		PrintStringOn("GAR_TXT_INFODIVERSE",value	, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	end

	if IsEntitySelected("GAR_BT_CHOIXACTIF05") == 1 then
		PrintTextOn("GAR_BT_CHOIXACTIF10",58, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		local value = GetVMConso() / GetPodMaxNrj() * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF13", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF13",383, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = (0 + GetModInfo(VIT, ListModVit[GetUsedModVitIndex() + 1], "Vitesse")) / 200 * 100
		PrintProgressBarOn("GAR_BT_CHOIXACTIF15", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF15",391, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = (0 + GetModInfo(VIT, ListModVit[GetUsedModVitIndex() + 1], "Durée")) / 0.06
		PrintProgressBarOn("GAR_BT_CHOIXACTIF17", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
		PrintTextOn("GAR_BT_CHOIXACTIF17",384, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

--		value = (0 + GetModInfo(VIT, ListModVit[GetUsedModVitIndex() + 1], "Réactivation")) / 0.
--		PrintProgressBarOn("GAR_BT_CHOIXACTIF19", value, Pbcolor.r1 , Pbcolor.v1, Pbcolor.b1, Pbcolor.a1, Pbcolor.r2 , Pbcolor.v2, Pbcolor.b2, Pbcolor.a2, Pbcolor.r3 , Pbcolor.v3, Pbcolor.b3, Pbcolor.a3)
--		PrintTextOn("GAR_BT_CHOIXACTIF19",385, S_FONTE, S_MF,"LEFT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		value = GetModInfo(VIT, ListModVit[GetUsedModVitIndex() + 1], "Type")
		PrintStringOn("GAR_BT_CHOIXACTIF10",value	, S_FONTE, S_MF,"RIGHT"	, S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		
	end

end



function AfficheNetGames(t)

local r = nil
local i = 0
local gmodac = ""
local gtyp = ""
local gServ = ""
local gPrior = 0

	if affng == 0 then

		if lng[i] then
			while i <= ingmax do
				lng[i] = nil
				i = i+1
			end
			ingmax = 0
		end

		i = 0

		if t ~= 0 then
			
			if GetLuaObject("MUL_type02").idx1 == 151 then
				gmodac = "ALL"
			else
				if GetLuaObject("MUL_type02").idx1 == 152 then
					gmodac = "ARCADE"
				else
					gmodac = "CARRIERE"
				end
			end
			
			if GetLuaObject("MUL_type03").idx1 == 151 then
				gtyp = "ALL"
			else
				if GetLuaObject("MUL_type03").idx1 == 154 then
					gtyp = "SOLO"
				else
					if GetLuaObject("MUL_type03").idx1 == 155 then
						gtyp = "TEAM"
					else
						if GetLuaObject("MUL_type03").idx1 == 156 then
							gtyp = "FLAG"
						else
							gtyp = "FOX"
						end
					end
				end
			end
			if GetLuaObject("MUL_type01").idx1 == 176 then
				gServ = "LAN"
			else
				gServ = "IP"
			end
			if GetLuaObject("MUL_type04").idx1 == 151 then
				gPrior = 0
			elseif GetLuaObject("MUL_type04").idx1 == 158 then
				gPrior = 1
			end
		else
			gmodac = "ALL"
			gtyp = "ALL"
			gServ = "LAN"
			gPrior = 0
		end

		r = getFirstGame(gmodac,gtyp,gServ,0)

		if r == 0 then
			affng = 1
			return 0
		 end

		while r ~= 0 do
			if (gPrior == 0) or (gPrior == 1 and getNetGameStatus() == "1") then
				lng[i] = {nng ,nnt ,nnbp , nmode, ntype, nstatus, nping, npwd, ntypgame, nmodegame }
				lng[i].nng = getNetGameTitle()
				lng[i].nnbp = getNetNbPlayers().."/"..getNetNbMaxPlayers()
				lng[i].nmodegame = getNetGameMode()
				lng[i].ntypgame = getNetGameType()


				if getNetGameMode() == "ARCADE" then
					lng[i].nmode = GetText(152)
				elseif getNetGameMode() == "CARRIERE" then
					lng[i].nmode = GetText(153)
				end

				if getNetGameType() == "SOLO" then
					LoadTrackInfo(racelistS[getNetGameTrack()+1])
					lng[i].nnt = GetTrackInfo(racelistS[getNetGameTrack()+1], "Nom")
					lng[i].ntype = GetText(154)
				elseif getNetGameType() == "TEAM" then
					LoadTrackInfo(racelistT[getNetGameTrack()+1])
					lng[i].nnt = GetTrackInfo(racelistT[getNetGameTrack()+1], "Nom")
					lng[i].ntype = GetText(155)
				elseif getNetGameType() == "FLAG" then
					LoadTrackInfo(racelistFL[getNetGameTrack()+1])
					lng[i].nnt = GetTrackInfo(racelistFL[getNetGameTrack()+1], "Nom")
					lng[i].ntype = GetText(156)
				elseif getNetGameType() == "FOX" then
					LoadTrackInfo(racelistFO[getNetGameTrack()+1])
					lng[i].nnt = GetTrackInfo(racelistFO[getNetGameTrack()+1], "Nom")
					lng[i].ntype = GetText(157)
				end


				if getNetGameStatus() == "0" then
					lng[i].nstatus = "rouge"
				elseif getNetGameStatus() == "1" then
					lng[i].nstatus = "vert"
				else
					lng[i].nstatus = "rouge"
				end
				lng[i].nping = getNetGamePing()
				lng[i].npwd = isPasswordGame()
				i = i+1
			end
			r = getNextGame(gmodac,gtyp)
		end
		ingmax = i
		ing = 0
		affng = 1
	end


	return 0


end

-- ----------------------------------------------
-- CLASSE LUACLOCK
-- ----------------------------------------------
LUACLOCK={iStart, iPause, pause}

function LUACLOCK:Start()
	self.iStart = CurrentSystemTime()
	self.iPause = 0
	self.pause	= FALSE
end

-- Time en ms
function LUACLOCK:Time()
	if self.pause==FALSE then
		return CurrentSystemTime() - self.iStart
	else
		return self.iPause
	end
end

function LUACLOCK:Pause()
	if self.pause==FALSE then
		self.iPause	= CurrentSystemTime() - self.iStart
		self.pause	= TRUE
	end
end

function LUACLOCK:Continue()
	if self.pause==TRUE then
		self.pause	= FALSE
		self.iStart	= CurrentSystemTime() - self.iPause
	end
end

-- Exemple d'utilisation
-- ---------------------
--clock1 = clone(LUACLOCK)
--clock1.Start(clock1)
--clock1.Time(clock1)
--clock1.Pause(clock1)
--clock1.Continue(clock1)

-- ----------------------------------------------
----------------------Cochonneries a hervé
-- ------------------------------------------------------------------------------------------------------------------
-- Fonction de Chargement des game DATA
-- ------------------------------------------------------------------------------------------------------------------
function InitGameLancement(pf)

	local s = SetLoadMode()

	if s==BM_NO_MEDIA_INSERTED or s==BM_NO_VALID_MEDIA then
		SetValuePopupByScript(524, POPUP_STATE_NONE)

	elseif s==BM_MEDIA_CORRUPTED then
		SetValuePopupByScript(528, POPUP_STATE_NONE)

	elseif s==BM_MEDIA_NOT_FORMATED or s==BM_MEDIA_NO_SAVE then
		StartClock("CURRENT", 1, 572)
		gLS_state	= LS_STATE_WAIT

	elseif s==BM_OK then
		local lgd = LoadGameData()

		if (lgd==BM_MEDIA_NOT_FORMATED or lgd==BM_MEDIA_NO_SAVE) and pf==PLATFORM_PS2 then
			StartClock("CURRENT", 1, 572)
			gLS_state	= LS_STATE_WAIT

		elseif lgd==BM_CANCEL_BY_CHANGE then
			SetValuePopupByScript(522, POPUP_STATE_NONE)

		elseif lgd==BM_OK or (lgd==BM_MEDIA_NO_SAVE and pf==PLATFORM_PC) then
			gLS_backupNum = BuildPlayerSaveList(FALSE)
			MakeBackupList()

			local cl = FALSE
			if gLS_backupNum>0 then
				cl = CanLoad()
			end

			if pf==PLATFORM_PS2 then
				StartClock("CURRENT", 1, 572)
				gLS_state	= LS_STATE_WAIT
			else
				gLS_state	= LS_STATE_QUIT
			end

			if cl==TRUE then
				return TRUE
			end

		-- BM_SERIOUS_ERROR
		else
			if pf==PLATFORM_PS2 then
				SetValuePopupByScript(520, POPUP_STATE_NONE)
			else
				StartPopupByScript("Popup", 521, POPUP_STATE_NONE)
			end
		end

	-- BM_SERIOUS_ERROR
	else
		if pf==PLATFORM_PS2 then
			SetValuePopupByScript(520, POPUP_STATE_NONE)
		else
			StartPopupByScript("Popup", 521, POPUP_STATE_NONE)
		end
	end

	return FALSE
end

-- ------------------------------------------------------------------------------------------------------------------
function InitGameLancementClock (id)
	if gLS_mode == LS_MODE_INIT then

		-- All is ok, quit the popup
		if id==572 then
			SetGlobalVariable("gPOPUP_state", POPUP_STATE_QUIT)

		--
		elseif id==10572 then
			gLS_state = LS_STATE_ENTER
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function InitGameLancementPopup (id, res)

	if gLS_mode == LS_MODE_INIT then

		-- Caution, no mc !
		if id==524 or id==528 or id==522 or id==520 or id==521 then
			StartPopupByScript("Popup", 570, POPUP_STATE_NONE)

		-- Retry ?
		elseif id==570 then
			StartPopupByScript("Popup", 662, POPUP_STATE_YES_NO)

		-- Retry ...
		elseif id==662 then
			if res==POPUP_YES then
				gLS_state	= LS_STATE_INIT
				SetGlobalVariable("gFirstTime", TRUE)
			else
				gLS_state	= LS_STATE_QUIT
			end

		-- OK ...
		elseif id==572 then
			gLS_state	= LS_STATE_QUIT
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
-- RESET THE SAVE/LOAD/DEL SYSTEM
-- ------------------------------------------------------------------------------------------------------------------
function ResetSLDS ()
	gLS_mode		= LS_MODE_NONE
	gLS_state		= LS_STATE_NONE
	gLS_backupNum	= 0
	gLS_gameName	= ""
end


-- --------------------------------------------------------------------------------
-- MODE FORMAT
-- --------------------------------------------------------------------------------
function FormatAutomateUpdate ()
	if gLS_mode==LS_MODE_FORMAT then

		if gLS_state==LS_STATE_NEED_COUNT then
		-- -----------------------------------
			PrintDebug("Need format...")
			if gLS_count==0 then
				StartPopupByScript("Popup", 556, POPUP_STATE_WAIT)
			end
			gLS_count = gLS_count + 1
			if gLS_count==7 then
				gLS_state = LS_STATE_FORMAT
			end

		elseif gLS_state==LS_STATE_FORMAT then
		-- -----------------------------------
			local f = FormatMemoryCard()

			if f==BM_OK or f==BM_MC_ALREADY_FORMATED then
				PrintDebug("Format ok !")
				SetValuePopupByScript(558, POPUP_STATE_NONE)

			-- BM_SERIOUS_ERROR / BM_MC_ERROR_WHILE_FORMATED
			else
				SetValuePopupByScript(560, POPUP_STATE_NONE)
			end

			gLS_state = LS_STATE_WAIT
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function FormatAutomatePopup (id, res, init)
	if gLS_mode==LS_MODE_FORMAT then

		-- If error, retry ...
		if id==560 then
			if init==TRUE then
				gLS_mode	= LS_MODE_SAVE
				gLS_state	= LS_STATE_WAIT
				StartPopupByScript("Popup", 662, POPUP_STATE_YES_NO)
			else
				gLS_mode	= LS_MODE_NONE
				gLS_state	= LS_STATE_NONE
			end

		-- If ok, go to save ...
		elseif id==558 then
			if init==TRUE then
				gLS_mode	= LS_MODE_SAVE
				gLS_state	= LS_STATE_ENTER
			else
				PrintDebug("Go to save ....")
				gLS_mode	= LS_MODE_SAVE
				gLS_state	= LS_STATE_ENTER
			end
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
-- MODE SAVE
-- ------------------------------------------------------------------------------------------------------------------
function SaveAutomateUpdatePart1 (pf, toSelect, goToMenu)
	if gLS_mode==LS_MODE_SAVE then

		gGoToMenu = goToMenu

		if gLS_state==LS_STATE_ENTER then
		-- ------------------------------

			if pf==PLATFORM_PS2 then
				if GetGlobalVariable("gOnlyGameData")==FALSE then
					StartPopupByScript("Popup", 572, POPUP_STATE_WAIT)
				else
					StartPopupByScript("Popup", 580, POPUP_STATE_WAIT)
				end

				local l = SetLoadMode()

				if l==BM_NO_MEDIA_INSERTED or l==BM_NO_VALID_MEDIA then
					SetValuePopupByScript(524, POPUP_STATE_NONE)

				elseif l==BM_MEDIA_CORRUPTED then
					SetValuePopupByScript(528, POPUP_STATE_NONE)

				elseif l==BM_MEDIA_NOT_FORMATED then
					SetValuePopupByScript(550, POPUP_STATE_NONE)

				elseif l==BM_OK or l==BM_MEDIA_NO_SAVE then
					gLS_backupNum = BuildPlayerSaveList(TRUE)
					MakeBackupList()

					gExistGame = FindPlayerSave()

					local s = SetSaveMode()

					if s==BM_NO_MEDIA_INSERTED or s==BM_NO_VALID_MEDIA then
						SetValuePopupByScript(524, POPUP_STATE_NONE)

					elseif s==BM_MEDIA_CORRUPTED then
						SetValuePopupByScript(528, POPUP_STATE_NONE)

					elseif s==BM_NOT_ENOUGH_FREE_BLOCKS then
						SetValuePopupByScript(530, POPUP_STATE_NONE)

					elseif s==BM_MEDIA_NOT_FORMATED then
						SetValuePopupByScript(550, POPUP_STATE_NONE)

					elseif s==BM_OK then
						if GetGlobalVariable("gOnlyGameData")==TRUE then
							StartClock("CURRENT", 1, 580)
						else
							StartClock("CURRENT", 1, 572)
						end

					-- BM_SERIOUS_ERROR
					else
						SetValuePopupByScript(586, POPUP_STATE_NONE)
					end

				-- BM_SERIOUS_ERROR
				else
					SetValuePopupByScript(520, POPUP_STATE_NONE)
				end

				gLS_state = LS_STATE_WAIT

			-- PC
			else
				gLS_backupNum = BuildPlayerSaveList(TRUE)
				MakeBackupList()
				local lastGame = FindPlayerSave()

				if GetGlobalVariable("gOnlyGameData")==TRUE then
					gLS_state = LS_STATE_SAVE
				else
					if lastGame~=nil and lastGame~="" then
						if IsPlayerGameFree(lastGame)==FALSE then
							if GetGlobalVariable("gCallSaveMenu")==FALSE then
								-- La partie existe: demande d'ecrasement ...
								gLS_gameName = lastGame
								gLS_state = LS_STATE_WAIT
								StartPopupByScript("Popup", 582, POPUP_STATE_YES_NO)
							else
								gLS_gameName = lastGame
								gLS_state = LS_STATE_SAVE
							end

						else
							ResetLastGameName()
							gLS_gameName = MakeBackupName()
							gLS_state = LS_STATE_SAVE
						end
					else
						gLS_gameName = MakeBackupName()
						gLS_state = LS_STATE_SAVE
					end
				end
			end

		end

		if gLS_state==LS_STATE_SAVE then
		-- -----------------------------
			if GetGlobalVariable("gOnlyGameData")==TRUE then
				local sgd = SaveGameData()

				if sgd==BM_CANCEL_BY_CHANGE then
					StartPopupByScript("Popup", 522, POPUP_STATE_NONE)
					gLS_state = LS_STATE_WAIT

				elseif sgd==BM_OK then
					SetGlobalVariable("gCallSaveMenu", FALSE)
					gLS_state = LS_STATE_QUIT

				-- BM_SERIOUS_ERROR
				else
					StartPopupByScript("Popup", 586, POPUP_STATE_NONE)
					gLS_state = LS_STATE_WAIT
				end

			else
				local spg = BM_SERIOUS_ERROR
				if gExistGame==nil then
					spg = SavePlayerGame(gLS_gameName)
				else
					spg = SavePlayerGame(gExistGame)
				end

				if spg==BM_OK then
					if pf==PLATFORM_PS2 then
						SetValuePopupByScript(588, POPUP_STATE_NONE)
						gLS_state = LS_STATE_WAIT
					else
						SaveAutomatePopupPart1(588, POPUP_NO)
					end

				elseif spg==BM_CANCEL_BY_CHANGE then
					SetValuePopupByScript(522, POPUP_STATE_NONE)
					gLS_state = LS_STATE_WAIT

				-- BM_SERIOUS_ERROR
				else
					if pf==PLATFORM_PS2 then
						SetValuePopupByScript(586, POPUP_STATE_NONE)
					else
						StartPopupByScript("Popup", 587, POPUP_STATE_NONE)
					end
					gLS_state = LS_STATE_WAIT
				end
			end
		end

		if gLS_state==LS_STATE_QUIT then
		-- -----------------------------
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE

			if toSelect ~= nil and toSelect ~= "" then
				Selected(toSelect)
			end

			if GetGlobalVariable("gOnlyGameData")==TRUE and GetGlobalVariable("gPlayerDataToo")==TRUE then
				gLS_mode	= LS_MODE_SAVE
				gLS_state	= LS_STATE_INIT
				SetGlobalVariable("gCallSaveMenu", TRUE)
				SetGlobalVariable("gOnlyGameData", FALSE)

			else
				if goToMenu ~= nil and goToMenu ~= "" then
					gComeFromNME = nil
					if GetGlobalVariable("gStartIntroVideo")==TRUE then
						SetGlobalVariable("gStartIntroVideo", FALSE)
						setVideo( "sequence15", "sequence_15" )
					end
					LoadInterface(goToMenu)
				end
			end

		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function SaveAutomateUpdatePart2 (pf, toSelect)
	if gLS_mode==LS_MODE_SAVE and pf==PLATFORM_PS2 then

		if gLS_state==LS_STATE_NEED_COUNT then
		-- -----------------------------------
			if gLS_count==0 then
				if pf==PLATFORM_PS2 then
					StartPopupByScript("Popup", 580, POPUP_STATE_WAIT)
				else
					StartPopupByScript("Popup", 581, POPUP_STATE_WAIT)
				end
			end
			gLS_count = gLS_count + 1
			if gLS_count==7 then
				gLS_state = LS_STATE_SAVE
			end
		end

		if gLS_state==LS_STATE_OVERWRITE then
		-- ----------------------------------
			StartPopupByScript("Popup", 582, POPUP_STATE_YES_NO)
		end

		if gLS_state==LS_STATE_SAVE then
		-- -----------------------------
			local spg = SavePlayerGame(GetPlayerSaveNamePSI())

			if spg==BM_CANCEL_BY_CHANGE then
				SetValuePopupByScript(522, POPUP_STATE_NONE)
				gLS_state = LS_STATE_WAIT

			elseif spg==BM_OK then
				SetGlobalVariable("gCallSaveMenu", FALSE)
				RefreshGameList(TRUE)
				if pf==PLATFORM_PS2 then
					SetValuePopupByScript(588, POPUP_STATE_NONE)
					gLS_state = LS_STATE_WAIT
				else
					gLS_state = LS_STATE_QUIT
				end

			-- BM_SERIOUS_ERROR
			else
				SetValuePopupByScript(586, POPUP_STATE_NONE)
				gLS_state = LS_STATE_WAIT
			end

		end

		if gLS_state==LS_STATE_QUIT then
		-- -----------------------------
			if gLS_backupNum>0 and toSelect ~= nil and toSelect ~= "" then
				Selected(toSelect)
				gLS_state = LS_STATE_SELECT
			else
				gLS_mode	= LS_MODE_NONE
				gLS_state	= LS_STATE_NONE

				if gGoToMenu~=nil and gGoToMenu~="" then
					if GetGlobalVariable("gStartIntroVideo")==TRUE then
						SetGlobalVariable("gStartIntroVideo", FALSE)
						setVideo( "sequence15", "sequence_15" )
					end
					LoadInterface(gGoToMenu)
				else
					LoadInterface(GetPrevInterfName())
				end
			end
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function CommonAutomateClockPart1 (id)

	if gLS_mode==LS_MODE_SAVE then
	-- ---------------------------
		if id==572 then
			-- Le jeu existe ...
			if gExistGame~=nil then
				SetValuePopupByScript(582, POPUP_STATE_YES_NO)

			-- Le jeu n'existe pas ...
			else
				local freeSave = GetFreeSave()
				if freeSave==nil then
					SetGlobalVariable("gPOPUP_state", POPUP_STATE_QUIT)
				else
					gLS_gameName = freeSave
					SetValuePopupByScript(580, POPUP_STATE_WAIT)
					StartClock("CURRENT", 0.5, 1580)
				end
			end

		elseif id==1580 then
			gLS_state = LS_STATE_SAVE

		elseif id==580 then
			if GetGlobalVariable("gOnlyGameData")==TRUE then
				gLS_state = LS_STATE_SAVE
			else
				SetGlobalVariable("gPOPUP_state", POPUP_STATE_QUIT)
			end
		end

	else
	-- ---------------------------
		if id==572 then
			SetGlobalVariable("gPOPUP_state", POPUP_STATE_QUIT)
		end

	end

end

-- ------------------------------------------------------------------------------------------------------------------
function SaveAutomatePopupPart1 (id, res)
	if gLS_mode==LS_MODE_SAVE then

		-- Overwrite ...
		if id==582 then
			if res==POPUP_YES then
				if GetPlatform()==PLATFORM_PS2 then
					StartPopupByScript("Popup", 580, POPUP_STATE_WAIT)
					StartClock("CURRENT", 0.5, 1580)
				else
					--StartPopupByScript("Popup", 581, POPUP_STATE_WAIT)
					gLS_state = LS_STATE_SAVE
				end
			else
				gLS_state = LS_STATE_QUIT
			end
		end

		if id==588 then
			SetGlobalVariable("gCallSaveMenu", FALSE)
			gLS_state = LS_STATE_QUIT
		end

		-- PS2 -------------------------------------------------------------
		if GetPlatform()==PLATFORM_PS2 then

			-- Format ...
			if id==550 then
				StartPopupByScript("Popup", 554, POPUP_STATE_YES_NO)
			end

			if id==554 then
				if res==POPUP_YES then
					gLS_count	= 0
					gLS_mode	= LS_MODE_FORMAT
					gLS_state	= LS_STATE_NEED_COUNT
				else
					gLS_state	= LS_STATE_QUIT
				end
			end

			if id==560 then
				gLS_state	= LS_STATE_ENTER
			end

			-- Retry if error
			if id==586 or id==520 or id==524 or id==528 or id==530 or id==522 or id==560 then
				if GetGlobalVariable("gCallSaveMenu")==TRUE then
					StartPopupByScript("Popup", 662, POPUP_STATE_YES_NO)
					SetGlobalVariable("gAskToSave", FALSE)
				else
					StartPopupByScript("Popup", 662, POPUP_STATE_YES_NO)
				end
			end

			-- Retry ...
			if id==662 then
				if res==POPUP_YES then
					if GetGlobalVariable("gCallSaveMenu")==TRUE then
						gLS_state = LS_STATE_INIT
					else
						gLS_state = LS_STATE_ENTER
					end
				else
					gLS_state = LS_STATE_QUIT
				end
			end

			-- Save menu ...
			if id==572 then
				gLS_state = LS_STATE_SELECT
				LoadInterface("Menu_Load")
			end

		-- PC --------------------------------------------------------------
		else

			-- Retry if error
			if id==587 then
				gLS_state	= LS_STATE_QUIT
			end

		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function SaveAutomatePopupPart2 (id, res)
	if gLS_mode==LS_MODE_SAVE then

		-- Overwrite the game or not ?
		if id==582 then
			if res==POPUP_YES then
				gLS_state = LS_STATE_NEED_COUNT
			else
				Selected("LOA_BT_PLAYER")
				gLS_state = LS_STATE_SELECT
			end
		end

		-- Retry if error
		if id==522 or id==586 then
			if GetGlobalVariable("gCallSaveMenu")==TRUE then
				StartPopupByScript("Popup", 662, POPUP_STATE_YES_NO)
			else
				gLS_mode		= LS_MODE_NONE
				gLS_state		= LS_STATE_NONE
				LoadInterface(GetPrevInterfName())
			end
		end

		-- Retry ...
		if id==662 then
			if res==POPUP_YES then
				gLS_state	= LS_STATE_INIT
				SetGlobalVariable("gAskToSave", FALSE)
			else
				gLS_mode		= LS_MODE_NONE
				gLS_state		= LS_STATE_NONE
			end
			LoadInterface(GetPrevInterfName())
		end

		-- If ok
		if id==588 then
			gLS_state = LS_STATE_QUIT
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
-- MODE LOAD
-- ------------------------------------------------------------------------------------------------------------------
function LoadAutomateUpdatePart1 (pf, toSelect)
	if gLS_mode==LS_MODE_LOAD then

		if gLS_state==LS_STATE_ENTER then
		-- ------------------------------
			if pf==PLATFORM_PS2 then
				StartPopupByScript("Popup", 572, POPUP_STATE_WAIT)
			end

			local s = SetLoadMode()

			if s==BM_OK then
				gLS_backupNum = BuildPlayerSaveList(FALSE)
				MakeBackupList()

				if gLS_backupNum>0 then
					if CanLoad()==TRUE then
						if pf==PLATFORM_PS2 then
							gLS_state = LS_STATE_WAIT
							StartClock("CURRENT", 1, 572)
						else
							gLS_state = LS_STATE_SELECT
							LoadInterface("Menu_Load")
						end
					else
						if pf==PLATFORM_PS2 then
							SetValuePopupByScript(600, POPUP_STATE_NONE)
						else
							StartPopupByScript("Popup", 603, POPUP_STATE_NONE)
						end
						gLS_state = LS_STATE_WAIT
					end
				else
					if pf==PLATFORM_PC then
						StartPopupByScript("Popup", 603, POPUP_STATE_NONE)
					end
					gLS_state = LS_STATE_WAIT
				end

			else

				if s==BM_NO_MEDIA_INSERTED or s==BM_NO_VALID_MEDIA then
					SetValuePopupByScript(524, POPUP_STATE_NONE)

				elseif s==BM_MEDIA_CORRUPTED then
					SetValuePopupByScript(528, POPUP_STATE_NONE)

				elseif s==BM_MEDIA_NOT_FORMATED then
					SetValuePopupByScript(550, POPUP_STATE_NONE)

				elseif s==BM_MEDIA_NO_SAVE then
					SetValuePopupByScript(600, POPUP_STATE_NONE)

				-- BM_SERIOUS_ERROR
				else
					if pf==PLATFORM_PS2 then
						SetValuePopupByScript(520, POPUP_STATE_NONE)
					else
						StartPopupByScript("Popup", 521, POPUP_STATE_NONE)
					end
				end

				gLS_state = LS_STATE_WAIT

			end

		end

		if gLS_state==LS_STATE_QUIT then
		-- -----------------------------
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
			if toSelect ~= nil and toSelect ~= "" then
				Selected(toSelect)
			end
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function LoadAutomateUpdatePart2 (pf, toSelect)
	if gLS_mode==LS_MODE_LOAD then

		if gLS_state==LS_STATE_NEED_COUNT then
		-- -----------------------------------
			if pf==PLATFORM_PS2 then
				StartPopupByScript("Popup", 604, POPUP_STATE_WAIT)
				gLS_state = LS_STATE_WAIT
				StartClock("CURRENT", 1, 604)

--				if gLS_count==0 then
--					StartPopupByScript("Popup", 604, POPUP_STATE_WAIT)
--				end
--				gLS_count = gLS_count + 1
--				if gLS_count==7 then
--					gLS_state = LS_STATE_LOAD
--				end

			else
				gLS_state = LS_STATE_LOAD
			end
		end

		if gLS_state==LS_STATE_LOAD then
		-- -----------------------------
			lpg = LoadPlayerGame(GetPlayerSaveNamePSI())

			if lpg==BM_CANCEL_BY_CHANGE then
				SetValuePopupByScript(522, POPUP_STATE_NONE)
				gLS_state = LS_STATE_WAIT

			elseif lpg==BM_OK then
				player = GetPlayerName()
				if pf==PLATFORM_PS2 then
					SetValuePopupByScript(610, POPUP_STATE_NONE)
					gLS_state = LS_STATE_WAIT
				else
					LoadAutomatePopupPart2 (610, POPUP_NO)
				end

			-- BM_SERIOUS_ERROR
			else
				if pf==PLATFORM_PS2 then
					SetValuePopupByScript(608, POPUP_STATE_NONE)
				else
					SetValuePopupByScript(609, POPUP_STATE_NONE)
				end
				gLS_state = LS_STATE_WAIT
			end

		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function LoadAutomateClockPart2 (id)
	if gLS_mode==LS_MODE_LOAD then

		if id==604 then
			gLS_state = LS_STATE_LOAD
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function LoadAutomatePopupPart1 (id, res)
	if gLS_mode==LS_MODE_LOAD then

		-- Retry if error
		if id==524 or id==528 or id==550 or id==600 or id==603 or id==520 or id==521 then
			gLS_state = LS_STATE_QUIT
		end

		-- Load menu ...
		if id==572 then
			gLS_state = LS_STATE_SELECT
			LoadInterface("Menu_Load")
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function LoadAutomatePopupPart2 (id, res)
	if gLS_mode==LS_MODE_LOAD then

		-- If error, return to previous menu
		if id==522 or id==608 or id==609 then
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
			LoadInterface(GetPrevInterfName())
		end

		-- if ok, go to main menu
		if id==610 then
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
			
			if GetGlobalVariable("gStartIntroVideo")==TRUE then
				SetGlobalVariable("gStartIntroVideo", FALSE)
				setVideo( "sequence15", "sequence_15" )
			end

			LoadInterface("Menu_Principal")
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
-- MODE DEL
-- ------------------------------------------------------------------------------------------------------------------
function DelAutomateUpdatePart1 (pf, toSelect)
	if gLS_mode==LS_MODE_DEL then

		if gLS_state==LS_STATE_ENTER then
		-- ------------------------------
			if pf==PLATFORM_PS2 then
				StartPopupByScript("Popup", 572, POPUP_STATE_WAIT)
			end

			local l = SetLoadMode()

			if l==BM_OK then
				gLS_backupNum = BuildPlayerSaveList(FALSE)
				MakeBackupList()

				local s = SetDelMode()

				if s==BM_OK then
					if gLS_backupNum>0 then
						if CanLoad()==TRUE then
							if pf==PLATFORM_PS2 then
								gLS_state = LS_STATE_WAIT
								StartClock("CURRENT", 1, 572)
							else
								gLS_state = LS_STATE_SELECT
								LoadInterface("Menu_Load")
							end
						else
							if pf==PLATFORM_PS2 then
								SetValuePopupByScript(600, POPUP_STATE_NONE)
							else
								StartPopupByScript("Popup", 603, POPUP_STATE_NONE)
							end
							gLS_state = LS_STATE_WAIT
						end
					else
						if pf==PLATFORM_PC then
							StartPopupByScript("Popup", 603, POPUP_STATE_NONE)
						end
						gLS_state = LS_STATE_WAIT
					end

				else
					if s==BM_NO_MEDIA_INSERTED or s==BM_NO_VALID_MEDIA then
						SetValuePopupByScript(524, POPUP_STATE_NONE)

					elseif s==BM_MEDIA_CORRUPTED then
						SetValuePopupByScript(528, POPUP_STATE_NONE)

					elseif s==BM_NOT_ENOUGH_FREE_BLOCKS then
						SetValuePopupByScript(530, POPUP_STATE_NONE)

					elseif s==BM_MEDIA_NOT_FORMATED then
						SetValuePopupByScript(550, POPUP_STATE_NONE)

					-- BM_SERIOUS_ERROR
					else
						if pf==PLATFORM_PS2 then
							SetValuePopupByScript(626, POPUP_STATE_NONE)
						else
							SetValuePopupByScript(627, POPUP_STATE_NONE)
						end
					end

					gLS_state = LS_STATE_WAIT
				end

			else
				if l==BM_NO_MEDIA_INSERTED or l==BM_NO_VALID_MEDIA then
					SetValuePopupByScript(524, POPUP_STATE_NONE)

				elseif l==BM_MEDIA_CORRUPTED then
					SetValuePopupByScript(528, POPUP_STATE_NONE)

				elseif l==BM_MEDIA_NOT_FORMATED then
					SetValuePopupByScript(550, POPUP_STATE_NONE)

				elseif l==BM_MEDIA_NO_SAVE then
					SetValuePopupByScript(600, POPUP_STATE_NONE)

				-- BM_SERIOUS_ERROR
				else
					if pf==PLATFORM_PS2 then
						SetValuePopupByScript(520, POPUP_STATE_NONE)
					else
						StartPopupByScript("Popup", 521, POPUP_STATE_NONE)
					end
				end

				gLS_state = LS_STATE_WAIT
			end

		end

		if gLS_state==LS_STATE_QUIT then
		-- -----------------------------
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
			if toSelect ~= nil and toSelect ~= "" then
				Selected(toSelect)
			end
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function DelAutomateUpdatePart2 (pf, toSelect)
	if gLS_mode==LS_MODE_DEL then

		if gLS_state==LS_STATE_ENTER then
		-- ------------------------------
			StartPopupByScript("Popup", 622, POPUP_STATE_YES_NO)
		end

		if gLS_state==LS_STATE_NEED_COUNT then
		-- -----------------------------------
			if pf==PLATFORM_PS2 then
				if gLS_count==0 then
					StartPopupByScript("Popup", 620, POPUP_STATE_WAIT)
				end
				gLS_count = gLS_count + 1
				if gLS_count==7 then
					gLS_state = LS_STATE_DEL
				end
			else
				gLS_state = LS_STATE_DEL
			end
		end

		if gLS_state==LS_STATE_DEL then
		-- ----------------------------
			local dpg = DelPlayerGame(GetPlayerSaveNamePSI())

			if dpg==BM_CANCEL_BY_CHANGE then
				SetValuePopupByScript(522, POPUP_STATE_NONE)
				gLS_state = LS_STATE_WAIT

			elseif dpg==BM_OK then
				RefreshGameList(FALSE)
				if pf==PLATFORM_PS2 then
					SetValuePopupByScript(628, POPUP_STATE_NONE)
					gLS_state = LS_STATE_WAIT
				else
					gLS_state = LS_STATE_QUIT
				end

			-- BM_SERIOUS_ERROR
			else
				if pf==PLATFORM_PS2 then
					SetValuePopupByScript(626, POPUP_STATE_NONE)
				else
					SetValuePopupByScript(627, POPUP_STATE_NONE)
				end
				gLS_state = LS_STATE_WAIT
			end
		end

		if gLS_state==LS_STATE_QUIT then
		-- -----------------------------
			if gLS_backupNum>0 and toSelect ~= nil and toSelect ~= "" then
				Selected(toSelect)
				gLS_state = LS_STATE_SELECT
			else
				gLS_mode		= LS_MODE_NONE
				gLS_state		= LS_STATE_NONE
				LoadInterface("Menu_LoadSave")
			end
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function DelAutomatePopupPart1 (id, res)
	if gLS_mode==LS_MODE_DEL then

		-- If error
		if id==524 or id==528 or id==550 or id==600 or id==603 or id==520 or id==521 then
			gLS_state = LS_STATE_QUIT
		end

		-- If ok, go to delete menu ...
		if id==572 then
			gLS_state = LS_STATE_SELECT
			LoadInterface("Menu_Load")
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
function DelAutomatePopupPart2 (id, res)
	if gLS_mode==LS_MODE_DEL then

		-- If error, return to previous menu
		if id==522 or id==626 or id==627 then
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
			LoadInterface(GetPrevInterfName())
		end

		-- Delete ???
		if id==622 then
			if res==POPUP_YES then
				gLS_state	= LS_STATE_NEED_COUNT
			else
				gLS_state	= LS_STATE_SELECT
				Selected("LOA_BT_PLAYER")
			end
		end

		-- If ok
		if id==628 then
			gLS_state = LS_STATE_QUIT
		end

	end
end

-- ------------------------------------------------------------------------------------------------------------------
-- Rafraichit la liste des sauvegardes
-- ------------------------------------------------------------------------------------------------------------------
function RefreshGameList(getEmpty)
	gLS_backupNum = BuildPlayerSaveList(getEmpty)
	MakeBackupList()
	gLS_backupOffset = 0
	gLS_chosenBackup = 0

	return gLS_backupNum;
end


