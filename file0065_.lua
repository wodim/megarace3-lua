-- ----------------------------------------------
-- Réglages
-- ----------------------------------------------

-- Phase par laquelle le jeu commence (1~4)
INIT_STATE			= 1

-- Pourcentage d'ennemis à tuer pour les phases 1, 2, 3 et 4
PERCENT_P1			= 40
PERCENT_P2			= 30
PERCENT_P3			= 30
PERCENT_P4			= 20

-- Pourcentage d'ennemis à tuer actuellement
ennemis2Kill			= 0

-- Temps alloué pour les phases 1, 2, 3 et 4 en secondes
TIME_P1				= 100
TIME_P2				= 110
TIME_P3				= 120
TIME_P4				= 130

-- Temps global en secondes
TOTAL_TIME			= 900


-- .............. Bonus de temps .................

TIME_BONUS_P1_2		= 5
TIME_BONUS_P1_3		= 8
TIME_BONUS_P1_4		= 10

TIME_BONUS_P2_2		= 5
TIME_BONUS_P2_3		= 8
TIME_BONUS_P2_4		= 10

TIME_BONUS_P3_2		= 5
TIME_BONUS_P3_3		= 8
TIME_BONUS_P3_4		= 10

TIME_BONUS_P4_2		= 5
TIME_BONUS_P4_3		= 8
TIME_BONUS_P4_4		= 10


-- .............. Malus de temps .................
--			!!! Pas de signe '-' !!!

TIME_MALUS_P1		= 15
TIME_MALUS_P2		= 15
TIME_MALUS_P3		= 15
TIME_MALUS_P4		= 15

-- .................... VIES ....................

G_LIFE				= 10
B_LIFE				= 10

VPA_LIFE			= 10
VNA_LIFE			= 10
VGA_LIFE			= 10

VPB_LIFE			= 10
VNB_LIFE			= 10
VGB_LIFE			= 10

-- .............. FACTEURS MISSILE (en %) ...............

G_FACT_MISS			= 100
B_FACT_MISS			= 100

VPA_FACT_MISS		= 100
VNA_FACT_MISS		= 100
VGA_FACT_MISS		= 100

VPB_FACT_MISS		= 100
VNB_FACT_MISS		= 100
VGB_FACT_MISS		= 100

-- ................... DEGATS ...................

LIQUID_LIFE_LOST	= -10

-- Dégats globules
G_LIFE_LOST			= -5
G_SPEED_LOST		= 0.5
G_SPEED_MAX			= -0.6
G_ACC_MAX			= -0.9
G_GRIP_MAX			= -0.5

-- Dégats globules infectés (=blobules)
B_LIFE_LOST			= -5
B_SPEED_LOST		= 0.5
B_SPEED_MAX			= -0.6
B_ACC_MAX			= -0.9
B_GRIP_MAX			= -0.5

-- Dégats virus A (petit)
VPA_LIFE_LOST		= -5
VPA_NRJ_LOST		= -5
--VPA_COL_LIFE		= 20
--VPA_COL_LIFE_FACTOR	= 3.6

-- Dégats virus A (normal)
VNA_LIFE_LOST		= -5
VNA_NRJ_LOST		= -5
--VNA_COL_LIFE		= 20
--VNA_COL_LIFE_FACTOR	= 3.5

-- Dégats virus A (grand)
VGA_LIFE_LOST		= -5
VGA_NRJ_LOST		= -5
--VGA_COL_LIFE		= 20
--VGA_COL_LIFE_FACTOR	= 3.5

-- Dégats virus B (petit)
VPB_LIFE_LOST		= -5
VPB_NRJ_LOST		= -5
--VPB_COL_LIFE		= 20
--VPB_COL_LIFE_FACTOR	= 3.5

-- Dégats virus B (normal)
VNB_LIFE_LOST		= -5
VNB_NRJ_LOST		= -5
--VNB_COL_LIFE		= 20
--VNB_COL_LIFE_FACTOR	= 3.5

-- Dégats virus B (grand)
VGB_LIFE_LOST		= -5
VGB_NRJ_LOST		= -5
--VGB_COL_LIFE		= 20
--VGB_COL_LIFE_FACTOR	= 3.5


-- ----------------------------------------------
-- Globales
-- ----------------------------------------------

-- Phase en cours
trackStateL4		= INIT_STATE

-- Temps écoulé pour la phase en cours
clockL4				= clone(LUACLOCK)
totalClockL4		= clone(LUACLOCK)

-- Temps des phases
timePart1			= TIME_P1
timePart2			= TIME_P2
timePart3			= TIME_P3
timePart4			= TIME_P4

-- Nombre de fois passé dans la phase
n1					= 0
n2					= 0
n3					= 0
n4					= 0

-- Nbre d'ennemis pour la phase en cours (mis à jour dans l'init des phases)
enemiesNum			= 0

-- Nbre d'ennemis tués pour la phase en cours
killedEnemiesNum	= 0

playerLost	= FALSE
playerWin	= FALSE

-- Function 'EnableEntity'
-- ----------------------------------------------
function EnableEntity (entityName, soundName, collision, life, factorMissile)

	local fm = factorMissile * 10

	ResurectEntity(entityName, collision, FALSE)

	NotifyToEntiy(entityName, TE_ADD_MAXLIFE, life)
	NotifyToEntiy(entityName, TE_ADD_DAMAGE_MISSILE_FACTOR, fm)

	JoueSon3D(soundName, entityName, TRUE, -1)
	GetLuaObject(entityName).visible = TRUE
end


-- Function 'DisableEntity'
-- ----------------------------------------------
function DisableEntity (entityName, soundName)

	KillEntity(entityName)

	StoppeSon(soundName, entityName)
	GetLuaObject(entityName).visible = FALSE
end


-- Function 'HideAll'
-- ----------------------------------------------
function HideAll ()

	DisableEntity("Dummy_Globule_Norm", "Glob")
	DisableEntity("Dummy_Globule_Norm01", "Glob")
	DisableEntity("Dummy_Globule_Norm02", "Glob")
	DisableEntity("Dummy_Globule_Norm03", "Glob")
	DisableEntity("Dummy_Globule_Norm04", "Glob")
	DisableEntity("Dummy_Globule_Norm05", "Glob")
	DisableEntity("Dummy_Globule_Norm06", "Glob")
	DisableEntity("Dummy_Globule_Norm07", "Glob")
	DisableEntity("Dummy_Globule_Norm08", "Glob")
	DisableEntity("Dummy_Globule_Norm09", "Glob")
	DisableEntity("Dummy_Globule_Norm10", "Glob")
	DisableEntity("Dummy_Globule_Norm11", "Glob")
	DisableEntity("Dummy_Globule_Norm12", "Glob")
	DisableEntity("Dummy_Globule_Norm13", "Glob")
	DisableEntity("Dummy_Globule_Norm14", "Glob")
	DisableEntity("Dummy_Globule_Norm15", "Glob")

	DisableEntity("o3d_blobule", "Blob")
	DisableEntity("o3d_blobule01", "Blob")
	DisableEntity("o3d_blobule02", "Blob")
	DisableEntity("o3d_blobule03", "Blob")
	DisableEntity("o3d_blobule04", "Blob")
	DisableEntity("o3d_blobule05", "Blob")
	DisableEntity("o3d_blobule06", "Blob")
	DisableEntity("o3d_blobule07", "Blob")
	DisableEntity("o3d_blobule08", "Blob")
	DisableEntity("o3d_blobule09", "Blob")
	DisableEntity("o3d_blobule10", "Blob")
	DisableEntity("o3d_blobule11", "Blob")
	DisableEntity("o3d_blobule12", "Blob")
	DisableEntity("o3d_blobule13", "Blob")
	DisableEntity("o3d_blobule14", "Blob")
	DisableEntity("o3d_blobule15", "Blob")

	DisableEntity("Dummy_grd_virus_A", "Virus")
	DisableEntity("Dummy_grd_virus_A1", "Virus")
	DisableEntity("Dummy_grd_virus_A2", "Virus")
	DisableEntity("Dummy_grd_virus_A3", "Virus")
	DisableEntity("Dummy_grd_virus_A4", "Virus")
	DisableEntity("Dummy_grd_virus_A5", "Virus")
	DisableEntity("Dummy_grd_virus_A6", "Virus")

	DisableEntity("Dummy_grd_virus_B", "Virus")
	DisableEntity("Dummy_grd_virus_B1", "Virus")
	DisableEntity("Dummy_grd_virus_B2", "Virus")
	DisableEntity("Dummy_grd_virus_B3", "Virus")
	DisableEntity("Dummy_grd_virus_B4", "Virus")
	DisableEntity("Dummy_grd_virus_B5", "Virus")

	DisableEntity("Dummy_petit_virus_A", "Virus")
	DisableEntity("Dummy_petit_virus_A1", "Virus")
	DisableEntity("Dummy_petit_virus_A2", "Virus")

	DisableEntity("Dummy_petit_virus_B", "Virus")
	DisableEntity("Dummy_petit_virus_B1", "Virus")

	DisableEntity("Dummy_virus_A", "Virus")
	DisableEntity("Dummy_virus_A1", "Virus")
	DisableEntity("Dummy_virus_A2", "Virus")
	DisableEntity("Dummy_virus_A3", "Virus")
	DisableEntity("Dummy_virus_A4", "Virus")
	DisableEntity("Dummy_virus_A5", "Virus")
	DisableEntity("Dummy_virus_A6", "Virus")
	DisableEntity("Dummy_virus_A7", "Virus")
	DisableEntity("Dummy_virus_A8", "Virus")
	DisableEntity("Dummy_virus_A9", "Virus")

	DisableEntity("Dummy_virus_B", "Virus")
	DisableEntity("Dummy_virus_B1", "Virus")
	DisableEntity("Dummy_virus_B2", "Virus")
	DisableEntity("Dummy_virus_B3", "Virus")
	DisableEntity("Dummy_virus_B4", "Virus")
	DisableEntity("Dummy_virus_B5", "Virus")
	DisableEntity("Dummy_virus_B6", "Virus")
	DisableEntity("Dummy_virus_B7", "Virus")
	DisableEntity("Dummy_virus_B8", "Virus")

end

-- Function 'InitGreyP1'
-- ----------------------------------------------
function InitGreyP1 (infected)

	EnableEntity("Dummy_grd_virus_B1", "Virus", TRUE, VGB_LIFE, VGB_FACT_MISS)
	EnableEntity("Dummy_grd_virus_B4", "Virus", TRUE, VGB_LIFE, VGB_FACT_MISS)
	EnableEntity("Dummy_petit_virus_A1", "Virus", TRUE, VPA_LIFE, VPA_FACT_MISS)
	EnableEntity("Dummy_petit_virus_A2", "Virus", TRUE, VPA_LIFE, VPA_FACT_MISS)
	EnableEntity("Dummy_petit_virus_B", "Virus", TRUE, VPB_LIFE, VPB_FACT_MISS)
	EnableEntity("Dummy_virus_A1", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_A9", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_B8", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)

	enemiesNum = enemiesNum + 8

	if infected==TRUE then

		EnableEntity("o3d_blobule08", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule09", "Blob", TRUE, B_LIFE, B_FACT_MISS)

		enemiesNum = enemiesNum + 2

	else

		EnableEntity("Dummy_Globule_Norm08", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm09", "Glob", TRUE, G_LIFE, G_FACT_MISS)

		enemiesNum = enemiesNum + 2

	end

end

-- Function 'InitGreyP2'
-- ----------------------------------------------
function InitGreyP2 (infected)

	EnableEntity("Dummy_virus_A7", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_A8", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_B3", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)
	EnableEntity("Dummy_virus_B7", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)

	enemiesNum = enemiesNum + 4

	if infected==TRUE then

		EnableEntity("o3d_blobule03", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule04", "Blob", TRUE, B_LIFE, B_FACT_MISS)

		enemiesNum = enemiesNum + 2

	else

		EnableEntity("Dummy_Globule_Norm03", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm04", "Glob", TRUE, G_LIFE, G_FACT_MISS)

		enemiesNum = enemiesNum + 2

	end

end

-- Function 'InitGreyP3'
-- ----------------------------------------------
function InitGreyP3 (infected)

	EnableEntity("Dummy_grd_virus_A", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_A2", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_A5", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_B", "Virus", TRUE, VGB_LIFE, VGB_FACT_MISS)
	EnableEntity("Dummy_grd_virus_B2", "Virus", TRUE, VGB_LIFE, VGB_FACT_MISS)
	EnableEntity("Dummy_virus_A2", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_A3", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_A5", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)

	enemiesNum = enemiesNum + 8

	if infected==TRUE then

		EnableEntity("o3d_blobule", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule01", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule02", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule11", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule12", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule13", "Blob", TRUE, B_LIFE, B_FACT_MISS)

		enemiesNum = enemiesNum + 6

	else

		EnableEntity("Dummy_Globule_Norm", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm01", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm02", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm11", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm12", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm13", "Glob", TRUE, G_LIFE, G_FACT_MISS)

		enemiesNum = enemiesNum + 6

	end

end

-- Function 'InitOrange'
-- ----------------------------------------------
function InitOrange (infected)

	EnableEntity("Dummy_grd_virus_A4", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_B5", "Virus", TRUE, VGB_LIFE, VGB_FACT_MISS)
	EnableEntity("Dummy_petit_virus_A", "Virus", TRUE, VPA_LIFE, VPA_FACT_MISS)
	EnableEntity("Dummy_virus_A4", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_A6", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_B", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)
	EnableEntity("Dummy_virus_B1", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)
	EnableEntity("Dummy_virus_B2", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)
	EnableEntity("Dummy_virus_B4", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)

	enemiesNum = enemiesNum + 9

	if infected==TRUE then

		EnableEntity("o3d_blobule05", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule06", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule07", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule10", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule14", "Blob", TRUE, B_LIFE, B_FACT_MISS)
		EnableEntity("o3d_blobule15", "Blob", TRUE, B_LIFE, B_FACT_MISS)

		enemiesNum = enemiesNum + 6

	else

		EnableEntity("Dummy_Globule_Norm05", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm06", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm07", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm10", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm14", "Glob", TRUE, G_LIFE, G_FACT_MISS)
		EnableEntity("Dummy_Globule_Norm15", "Glob", TRUE, G_LIFE, G_FACT_MISS)

		enemiesNum = enemiesNum + 6

	end

end

-- Function 'InitGreen'
-- ----------------------------------------------
function InitGreen ()

	EnableEntity("Dummy_grd_virus_A1", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_A3", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_A6", "Virus", TRUE, VGA_LIFE, VGA_FACT_MISS)
	EnableEntity("Dummy_grd_virus_B3", "Virus", TRUE, VGB_LIFE, VGB_FACT_MISS)
	EnableEntity("Dummy_petit_virus_B1", "Virus", TRUE, VPB_LIFE, VPB_FACT_MISS)
	EnableEntity("Dummy_virus_A", "Virus", TRUE, VNA_LIFE, VNA_FACT_MISS)
	EnableEntity("Dummy_virus_B5", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)
	EnableEntity("Dummy_virus_B6", "Virus", TRUE, VNB_LIFE, VNB_FACT_MISS)

	enemiesNum = enemiesNum + 8

end


-- Function 'ChangeMap'
-- ----------------------------------------------
function ChangeMap (next)

	if trackStateL4==1 then
		if next==FALSE then
			-- Vient de la phase 2
			replaceMap("C4-Ff", "C4-A")
			replaceMap("C4-Dd", "C4-B")
			replaceMap("C4-Dd1", "C4-C")
			replaceMap("C4-Dd", "C4BB")
			replaceMap("C4-Dd", "C4BBB")
			replaceMap("C4-Dd", "C4BBBB")
			replaceMap("C4-Dd", "C4BBBBB")
			replaceMap("C4-Dd", "C4BBBBBB")
			replaceMap("C4-Dd", "C4BBBBH")
			replaceMap("C4-Dd", "C4BBBBBH")
			replaceMap("C4-Ll01_entamé", "C4-Ll01")
			replaceMap("C4-newDd-Ff2", "C4-newA-A")
			replaceMap("C4-newDd-Dd1", "C4-newA-Aa")
			replaceMap("C4-newDd-Dd1-2", "C4-newA-C")
			replaceMap("C4-newDd-Ff", "C4-newA-Cc")
			replaceMap("C4-Dd1-alfa", "C4-C_alpha")
			replaceMap("C4-Jj1", "C4-Hh")
			replaceMap("C4-N", "C4-M")
			replaceMap("C4-chair01_entamée", "C4-chair01")
			replaceMap("C4-chair02_entamée", "C4-chair02")
		end

	elseif trackStateL4==2 then
		-- Vient de la phase 1
		if next==TRUE then
			replaceMap("C4-A", "C4-Ff")
			replaceMap("C4-B", "C4-Dd")
			replaceMap("C4-C", "C4-Dd1")
			replaceMap("C4BB", "C4-Dd")
			replaceMap("C4BBB", "C4-Dd")
			replaceMap("C4BBBB", "C4-Dd")
			replaceMap("C4BBBBB", "C4-Dd")
			replaceMap("C4BBBBBB", "C4-Dd")
			replaceMap("C4BBBBH", "C4-Dd")
			replaceMap("C4BBBBBH", "C4-Dd")
			replaceMap("C4-Ll01", "C4-Ll01_entamé")
			replaceMap("C4-newA-A", "C4-newDd-Ff2")
			replaceMap("C4-newA-Aa", "C4-newDd-Dd1")
			replaceMap("C4-newA-C", "C4-newDd-Dd1-2")
			replaceMap("C4-newA-Cc", "C4-newDd-Ff")
			replaceMap("C4-C_alpha", "C4-Dd1-alfa")
			replaceMap("C4-Hh", "C4-Jj1")
			replaceMap("C4-M", "C4-N")
			replaceMap("C4-chair01", "C4-chair01_entamée")
			replaceMap("C4-chair02", "C4-chair02_entamée")
		-- Vient de la phase 3
		else
			replaceMap("C4-Gg", "C4-Ff")
			replaceMap("C4-Ee", "C4-Dd")
			replaceMap("C4-Ee1", "C4-Dd1")
			replaceMap("C4-newEe-Gg2", "C4-newDd-Ff2")
			replaceMap("C4-newEe-Ee1", "C4-newDd-Dd1")
			replaceMap("C4-newEe-Ee1-2", "C4-newDd-Dd1-2")
			replaceMap("C4-newEe-Gg", "C4-newDd-Ff")
			replaceMap("C4-Ee1-alfa", "C4-Dd1-alfa")
			replaceMap("C4-Kk1", "C4-Jj1")
			replaceMap("C4-O", "C4-N")
		end

	elseif trackStateL4==3 then
		if next==TRUE then
			-- Vient de la phase 2
			replaceMap("C4-Ff", "C4-Gg")
			replaceMap("C4-Dd", "C4-Ee")
			replaceMap("C4-Dd1", "C4-Ee1")
			replaceMap("C4-newDd-Ff2", "C4-newEe-Gg2")
			replaceMap("C4-newDd-Dd1", "C4-newEe-Ee1")
			replaceMap("C4-newDd-Dd1-2", "C4-newEe-Ee1-2")
			replaceMap("C4-newDd-Ff", "C4-newEe-Gg")
			replaceMap("C4-Dd1-alfa", "C4-Ee1-alfa")
			replaceMap("C4-Jj1", "C4-Kk1")
			replaceMap("C4-N", "C4-O")
		end
	end

end


-- Function 'Reset'
-- ----------------------------------------------
function Reset ()

	-- Ouvre toutes les alvéoles
	SetAnimFinishMode("o3d_alveole", 1)
	StartEntityAnim("o3d_alveole", "ventricules", -1, 1, 0.1)
	EnableCollisionDetection("o3d_alveole", FALSE)

	SetAnimFinishMode("o3d_alveole01", 1)
	StartEntityAnim("o3d_alveole01", "ventricules", -1, 1, 0.1)
	EnableCollisionDetection("o3d_alveole01", FALSE)

	SetAnimFinishMode("o3d_alveole_big", 1)
	StartEntityAnim("o3d_alveole_big", "ventricules+", -1, 1, 0.1)
	EnableCollisionDetection("o3d_alveole_big", FALSE)

	-- Cache tous les ennemis
	HideAll()

	-- Reset le nbre d'ennemies
	enemiesNum = 0

end


-- Function 'InitPart1'
-- ----------------------------------------------
function InitPart1 (next)

	trackStateL4 = 1

	Reset()
	InitGreyP1(FALSE)
	InitGreyP2(FALSE)
	InitGreyP3(FALSE)
	ShowEntity("o3d_mort")

	ChangeMap(next)

	DisplayMsgCataCol(131, 0, 255, 0)

	n1 = n1 + 1

	local time = totalClockL4.Time(totalClockL4) / 1000

	if time>TOTAL_TIME then
		timePart1 = timePart1 - TIME_MALUS_P1
		PrintDebug("Total time depasse ===> Newtime="..timePart1)

	else
		if n1==2 then
			timePart1 = timePart1 + TIME_BONUS_P1_2
			PrintDebug("2e fois ===> Newtime="..timePart1)
		elseif n1==3 then
			timePart1 = timePart1 + TIME_BONUS_P1_3
			PrintDebug("3e fois ===> Newtime="..timePart1)
		elseif n1==4 then
			timePart1 = timePart1 + TIME_BONUS_P1_4
			PrintDebug("4e fois ===> Newtime="..timePart1)
		end
	end
	
	ennemis2Kill = enemiesNum * (PERCENT_P1 / 100)

	SetLimitTime(0,0,timePart1)

end



-- Function 'InitPart2'
-- ----------------------------------------------
function InitPart2 (next)

	trackStateL4 = 2

	Reset()
	InitGreyP1(TRUE)
	InitGreyP2(TRUE)
	InitGreen()
	HideEntity("o3d_mort")

	ChangeMap(next)

	DisplayMsgCataCol(131, 0, 255, 0)

	n2 = n2 + 1

	local time = totalClockL4.Time(totalClockL4) / 1000

	if time>TOTAL_TIME then
		timePart2 = timePart2 - TIME_MALUS_P2
		PrintDebug("Total time depasse ===> Newtime="..timePart2)

	else
		if n2==2 then
			timePart2 = timePart2 + TIME_BONUS_P2_2
			PrintDebug("2e fois ===> Newtime="..timePart2)
		elseif n2==3 then
			timePart2 = timePart2 + TIME_BONUS_P2_3
			PrintDebug("3e fois ===> Newtime="..timePart2)
		elseif n2==4 then
			timePart2 = timePart2 + TIME_BONUS_P2_4
			PrintDebug("4e fois ===> Newtime="..timePart2)
		end
	end
	
	ennemis2Kill = enemiesNum * (PERCENT_P2 / 100)

	SetLimitTime(0,0,timePart2)

end


-- Function 'InitPart3'
-- ----------------------------------------------
function InitPart3 (next)

	trackStateL4 = 3

	Reset()
	InitGreyP1(TRUE)
	InitGreyP3(TRUE)
	InitOrange(FALSE)
	ShowEntity("o3d_mort")

	ChangeMap(next)

	DisplayMsgCataCol(132, 0, 255, 0)

	n3 = n3 + 1

	local time = totalClockL4.Time(totalClockL4) / 1000

	if time>TOTAL_TIME then
		timePart3 = timePart3 - TIME_MALUS_P3
		PrintDebug("Total time depasse ===> Newtime="..timePart3)

	else
		if n3==2 then
			timePart3 = timePart3 + TIME_BONUS_P3_2
			PrintDebug("2e fois ===> Newtime="..timePart3)
		elseif n3==3 then
			timePart3 = timePart3 + TIME_BONUS_P3_3
			PrintDebug("3e fois ===> Newtime="..timePart3)
		elseif n3==4 then
			timePart3 = timePart3 + TIME_BONUS_P3_4
			PrintDebug("4e fois ===> Newtime="..timePart3)
		end
	end
	
	ennemis2Kill = enemiesNum * (PERCENT_P3 / 100)

	SetLimitTime(0,0,timePart3)

end



-- Function 'InitPart4'
-- ----------------------------------------------
function InitPart4 (next)

	trackStateL4 = 4

	Reset()
	InitGreyP1(TRUE)
	InitOrange(TRUE)
	InitGreen()
	HideEntity("o3d_mort")

	ChangeMap(next)

	DisplayMsgCataCol(133, 0, 255, 0)

	n4 = n4 + 1

	local time = totalClockL4.Time(totalClockL4) / 1000

	if time>TOTAL_TIME then
		timePart4 = timePart4 - TIME_MALUS_P4
		PrintDebug("Total time depasse ===> Newtime="..timePart4)

	else
		if n4==2 then
			timePart4 = timePart4 + TIME_BONUS_P4_2
			PrintDebug("2e fois ===> Newtime="..timePart4)
		elseif n4==3 then
			timePart4 = timePart4 + TIME_BONUS_P4_3
			PrintDebug("3e fois ===> Newtime="..timePart4)
		elseif n4==4 then
			timePart4 = timePart4 + TIME_BONUS_P4_4
			PrintDebug("4e fois ===> Newtime="..timePart4)
		end
	end
	
	ennemis2Kill = enemiesNum * (PERCENT_P4 / 100)

	SetLimitTime(0,0,timePart4)

end



-- Function 'Compute'
-- ----------------------------------------------
function Compute ()
	local time			= clockL4.Time(clockL4) / 1000
	local percentKillL4	= killedEnemiesNum * 100 / enemiesNum

	PrintDebug("_____________________________________________________________________________________")
	PrintDebug("Go to next state ???")
	PrintDebug("Current time:"..time)
	PrintDebug("current kill:"..percentKillL4)
	PrintDebug("...")

	-- .............................................................................
	-- Phase 1
	-- .............................................................................
	if trackStateL4==1 then
		-- Gagné ?
		if time <= timePart1 and percentKillL4 >= PERCENT_P1 then
			playerWin = TRUE

		-- Vers phase 2
		else
			InitPart2(TRUE)
		end


	-- .............................................................................
	-- Phase 2
	-- .............................................................................
	elseif trackStateL4==2 then

		-- Vers phase 1
		if time <= timePart2 and percentKillL4 >= PERCENT_P2 then
			InitPart1(FALSE)

		-- Vers phase 3
		else
			InitPart3(TRUE)
		end


	-- .............................................................................
	-- Phase 3
	-- .............................................................................
	elseif trackStateL4==3 then

		-- Vers phase 2
		if time <= timePart3 and percentKillL4 >= PERCENT_P3 then
			InitPart2(FALSE)

		-- Vers phase 4
		else
			InitPart4(TRUE)
		end


	-- .............................................................................
	-- Phase 4
	-- .............................................................................
	elseif trackStateL4==4 then

		-- Vers phase 3
		if time <= timePart4 and percentKillL4 >= PERCENT_P4 then
			InitPart3(FALSE)

		-- Perdu !
		else
			playerLost = TRUE
		end
	end

	killedEnemiesNum = 0
	SetPercentIG(100)
	SetColorIG(PERCENT_COLOR, 255, 0, 0, 255)
	clockL4.Start(clockL4)

	PrintDebug("Current state:"..trackStateL4)
	PrintDebug("_____________________________________________________________________________________")
end





-- ----------------------------------------------
-- Classe L4
-- ----------------------------------------------

L4lua={}

L4end	= FALSE


-- Function 'Init'
-- ----------------------------------------------
function L4lua:Init()

  	PrintDebug("Track L4 Init ...")

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	--SetDrawPercent(TRUE)
	SetDrawProgBar(FALSE)
	SetDrawTarget(FALSE)

	DisplayMsgCataCol(130, 0, 255, 0)

	-- On load les maps pour les chgts de texture
	loadMap("C4-Ff")
	loadMap("C4-Dd")
	loadMap("C4-Dd1")
	loadMap("C4-Ll01_entamé")
	loadMap("C4-newDd-Ff2")
	loadMap("C4-newDd-Dd1")
	loadMap("C4-newDd-Dd1-2")
	loadMap("C4-newDd-Ff")
	loadMap("C4-Dd1-alfa")
	loadMap("C4-Jj1")
	loadMap("C4-N")
	loadMap("C4-chair01_entamée")
	loadMap("C4-chair02_entamée")
	-- ----------------------------------
	loadMap("C4-Gg")
	loadMap("C4-Ee")
	loadMap("C4-Ee1")
	loadMap("C4-newEe-Gg2")
	loadMap("C4-newEe-Ee1")
	loadMap("C4-newEe-Ee1-2")
	loadMap("C4-newEe-Gg")
	loadMap("C4-Ee1-alfa")
	loadMap("C4-Kk1")
	loadMap("C4-O")

	ChargeSon("Glob")
	ChargeSon("Blob")
	ChargeSon("Virus")
	ChargeSon("Ventri")
	ChargeSon("VeiGonfl")

	-- Initialisation de la phase 1
	HideAll()
	enemiesNum = 0
	if trackStateL4==1 then
		n1 = n1 + 1
		InitGreyP1(FALSE)
		InitGreyP2(FALSE)
		InitGreyP3(FALSE)
		SetLimitTime(0,0,timePart1)

	-- POUR TESTER - A VIRER -----------------------------------------------
	elseif trackStateL4==2 then
		n2 = n2 + 1
		InitGreyP1(TRUE)
		InitGreyP2(TRUE)
		InitGreen()
		ChangeMap(TRUE)
		SetLimitTime(0,0,timePart2)

	elseif trackStateL4==3 then
		n3 = n3 + 1
		InitGreyP1(TRUE)
		InitGreyP3(TRUE)
		InitOrange(FALSE)
		ChangeMap(TRUE)
		SetLimitTime(0,0,timePart3)

	elseif trackStateL4==4 then
		n4 = n4 + 1
		InitGreyP1(TRUE)
		InitOrange(TRUE)
		InitGreen()
		SetLimitTime(0,0,timePart4)
	end
	-- ---------------------------------------------------------------------

	JoueFluxMusique("L4-Rat", 3, TRUE)

	totalClockL4.Start(totalClockL4)
	clockL4.Start(clockL4)
	
	SetFinishTime(20)
	SetColorIG(FINISH_COLOR, 255, 0, 0, 255)
	
	ennemis2Kill = enemiesNum * PERCENT_P1 / 100
	SetColorIG(PERCENT_COLOR, 255, 0, 0, 255)
	
	SetTotalLimitTime(0, 5, 0, FALSE)
	SetCalibrateTime(238)

end


-- Function 'Update'
-- ----------------------------------------------
function L4lua:Update()

	if L4end == FALSE then
	
		-- Assez de virus tués ?
		if ennemis2Kill ~= 0 and killedEnemiesNum >= ennemis2Kill then
			SetColorIG(PERCENT_COLOR, 0, 255, 0, 255)
			ennemis2Kill = 0
		end	
	
		if playerLost==TRUE then
			setVideo( "sequence10", "sequence_10" )
			SetDrawPercent(FALSE)
			EndRace(FALSE)
			L4end = TRUE
		end
	
		if playerWin==TRUE then
			SetDrawPercent(FALSE)
			EndRace(TRUE)
			L4end = TRUE
		end
		
	end

end


-- Function 'End'
-- ----------------------------------------------
function L4lua:End()
end


-- Function 'Notify'
-- ----------------------------------------------
function L4lua:Notify(event,param)

	if event==TM_RACE_STARTS then
		StartClockTrack(2, 0)
	end

	if event==TM_ENTITY_MORT then
		if param.name=="Player1" then
			setVideo( "sequence10", "sequence_10" )
			SetDrawPercent(FALSE)
			EndRace(FALSE)
		end
	end

	if event==TM_POD_NEWLAP then
		PrintDebug("************************** NEW LAP ****************************")
		Compute()
	end

end


-- Function 'Notify'
-- ----------------------------------------------
function L4lua:Clock(Id)

	if Id==0 then
		SetDrawPercent(TRUE)
	end
	
	EndRaceClock(Id)

end
