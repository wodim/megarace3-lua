#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------
#				PARAMETRAGE DES PROPRIETES PHYSIQUES ET DYNAMIQUES DES PODS
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------



#------------------------------------------------------------------------------------------------------
#					PROPRIETES INTRINSEQUES AU POD
#------------------------------------------------------------------------------------------------------
Elasticite					0			#Coefficient d'elasticité	0(faible rebond)-->1(haut rebond)
Friction					0			#Coefficient de friction	0(glisse bcp)----->1(ne glisse pas)
Masse						3000		#En kg.


#------------ Flottaison ------------------------------------------------------------------------------
HauteurFlottaison		1.5			#En mètres
LongueurRayons			4			#En mètres
MaxForceAdhesive		10000000
MaxForceRepulsive		24000000
FacteurAmortissement	0.2
FacteurRaideur			0.7

#------------ Derapages -------------------------------------------------------------------------------
CoeffDeGrip					1			#adherence en temps normal du pod: 0=pas d'aherence 1=adherence max,pas de glissade

#------------ Gravité pendant le saut -----------------------------------------------------------------
JumpGraviteDefaut			34000		

VitesseMaxVerticale			50				#Vitesse seuil du pod en hauteur, permet de detecter si on va decoller

#------------ Acceleration ----------------------------------------------------------------------------
VitesseMax			600				#Vitesse maximum

#------------ Virages ---------------------------------------------------------------------------------
StrafeTourneCoef			3500		#Différentiel sur les réacteurs de poussée

#------------ MissileLocké ----------------------------------------------------------------------------
TempsDAttenteLock			500	#Temps de latence avant que l'autoguidage ne s'effectue (en ms)

#------------ Vie du Missile ----------------------------------------------------------------------------
TempsDeVieMaximum			10000	#Temps maximal que pourra vivre un missile (en ms) (0 =tps infini)

#------------ Portee du missile ----------------------------------------------------------------------------
Portee						0		#Portee du missile.En m. =0 si portee infinie

#------------ Deflagration ----------------------------------------------------------------------------
DeflagIntensite				-50
DeflagRepulsionIntensite	50
DeflagRayonDAction			10
DeflagDuree					200			#en ms

IsFloat						1
IsLock						1
IsMine						0


CoefChocConstant			0.5		#Pourcentage de perte de vitesse suite à un choc
CoefChocAngle				0.1		#Pourcentage identique au précédent et proportionnel à l'angle du choc


HitRange					3.5		#Detecte si le missile touche un pod dans une sphere de 1.5m de rayon

FlagSurviveToCollision			0	#Indique si le missile survit a un choc avec kk1 d'autre (genre smoke)




#--------------------------------------------------------------------------------------------------------
#--------- Pas besoin de toucher a ce qui suit ----------------------------------------------------------
#--------------------------------------------------------------------------------------------------------
AmortissementRotationX				900000000
AmortissementRotationY			100
AmortissementRotationZ			900000000
AmortissementTranslation	0.0			#0.6			#-|  ( + de 1 = environnement visqueux )
FlagDImmobilite			0			#Ceci est un booleen: 0=FALSE

JumpGraviteDirectionDefautX		0
JumpGraviteDirectionDefautY		-1
JumpGraviteDirectionDefautZ		0

CoeffDeDerapage				1				#adherence en temps slide du pod: 0=pas d'aherence 1=adherence max,pas de glissade
CoeffDeDerapageReboost		1				#reprise (puissance moteur)
VitesseDeDerapage			9000		#si cette vitesse latérale est atteinte (en km/h), on commence à déraper

FlagDirOS				1			#Ceci est un booleen: 0=FALSE
FlagPosOS				1			#Ceci est un booleen: 0=FALSE
RayDirectionX			0
RayDirectionY			0
RayDirectionZ			-1
EcartementRayons		1.0
HauteurAuDepart			1.0
VitesseDeHauteurMax		10
