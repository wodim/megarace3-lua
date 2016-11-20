#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------
#				PARAMETRAGE DES PROPRIETES PHYSIQUES ET DYNAMIQUES DES PODS
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------



#------------------------------------------------------------------------------------------------------
#					PROPRIETES INTRINSEQUES AU POD
#------------------------------------------------------------------------------------------------------
Elasticite					0.3			#Coefficient d'elasticité	0(faible rebond)-->1(haut rebond)
Friction					0			#Coefficient de friction	0(glisse bcp)----->1(ne glisse pas)

Masse						1000		#En kg.


#------------ Flottaison ------------------------------------------------------------------------------
HauteurFlottaison		0.70			#En mètres
LongueurRayons			2			#En mètres
MaxForceAdhesive		1000000
MaxForceRepulsive		10000000
FacteurAmortissement		0.8
FacteurRaideur			0.55
EcartementRayons		0.5
HauteurAuDepart			0.2
VitesseDeHauteurMax		250

#------------ Ressorts de liaison ---------------------------------------------------------------------
RessortRaideur				0.1	#1
RessortAmmortissement		0.3	#0.1

ChocMinSpeed				10
ChocMinAngle				0
ChocDuration				300
ChocNewDampCoef				68000
ChocFrottiDuration			500

StopTurnMaxSpeed			40
StopTurnMaxCoef				8


#------------------------------------------------------------------------------------------------------
#					PROPRIETES PROPRES AU POD
#------------------------------------------------------------------------------------------------------
#------------ Hausse et baisse du nez -----------------------------------------------------------------
HautCoef					17000
BasCoef						12000
AmortissementRotationX				1


#------------ Acceleration ----------------------------------------------------------------------------
VitesseMax			400				#Vitesse maximum
coefAccel			0.15
coefDecel			0.7
coefAccelHaut			0.15
coefDecelHaut			0.7
coefAccelBas			0.15
coefDecelBas			0.7


#------------ Virages ---------------------------------------------------------------------------------
StrafeTourneCoef			10000			#Différentiel sur les réacteurs de poussée
AmortissementRotationZ			8			


#Paramètres qui agit sur le temps de réaction du vaisseau par rapport au touche/paddle#
FacteurMax				2			#		si val> tourne +/tps 
TempsMax				200			#En ms		Si tps> tourne +vite

#Courbe de modification de prise de virage en fonction de la vitesse
FacteurDeVitesse			0.08			#+ ce facteur est élevé, - la prise de virage est rapide.

VirageFacteur				0
VirageTemps					200

StrafeBasculeCoef			65000			#Pousse sur la boîte réelle; effet d'accompagner le virage
AmortissementRotationY			10


#------------ Derapages -------------------------------------------------------------------------------
CoeffDeGrip				0.3			#adherence en temps normal du pod: 0=pas d'aherence 1=adherence max,pas de glissade
VitesseDeDerapage			10			#si cette vitesse latérale est atteinte (en km/h), on commence à déraper
CoeffDeDerapage				0.1			#adherence en temps slide du pod: 0=pas d'aherence 1=adherence max,pas de glissade
CoeffDeDerapageReboost		0.5

#------------ Aerofreins ------------------------------------------------------------------------------
AerofreinCoef				40000			#Aerofrein brutal quand les 2 cotes sont actives
AerofreinCoteCoef			20000			#Aerofrein de cote
AerofreinCoteFacteur		0
AerofreinCoteTemps			200

VitesseMaxVerticale			45				#Vitesse seuil du pod en hauteur, permet de detecter si on va decoller


AngleDeToleranceSurTube		60				#Angle de tolerance avant l'assistance de conduite sur tube
VitesseDeToleranceSurTube	150				#Vitesse de tolerance avant l'assistance de conduite sur tube

CoefChocConstant			0.03		#Pourcentage de perte de vitesse suite à un choc
CoefChocAngle				0.015		#Pourcentage identique au précédent et proportionnel à l'angle du choc


LifeDamageVibrationIntensity	10000	#Quand le pod est mal en point. Intensite de vibration
LifeDamageVibrationFrequency	600		#Quand le pod est mal en point. Frequence de vibration
LifeDamageVibrationDuration		1000	#Quand le pod est mal en point. Duree de vibration
LifeDamageTurn				0.5	#0=tourne pas et 1=tourne au max


#------------------------------------------------------------------------------------------------------
#					PROPRIETES DU POD DANS LES SAUTS
#------------------------------------------------------------------------------------------------------
#--------------- Physique pure du pod dans les sauts --------------------------------------------------
JumpMasse						1000		#En kg.
JumpRessortRaideur				0.001
JumpRessortAmmortissement		0.003

#------------ Gravité pendant le saut -----------------------------------------------------------------
JumpGraviteDefaut				150		
JumpGraviteDirectionDefautX		0
JumpGraviteDirectionDefautY		-1
JumpGraviteDirectionDefautZ		0


#------------ Hausse et baisse du nez -----------------------------------------------------------------
JumpHautCoef		800
JumpBasCoef			800

#------------ Acceleration ----------------------------------------------------------------------------
JumpVitesseMax		200
JumpCoefAccel		0.7
JumpCoefDecel		0.7
JumpCoefAccelHaut	0.7
JumpCoefDecelHaut	0.7
JumpCoefAccelBas	0.7
JumpCoefDecelBas	0.7

#------------ Virages ---------------------------------------------------------------------------------
JumpStrafeTourneCoef		0			#Différentiel sur les réacteurs de poussée


#Paramètres qui agit sur le temps de réaction du vaisseau par rapport au touche/paddle#
JumpFacteurMax				2			#		si val> tourne +/tps 
JumpTempsMax				200			#En ms		Si tps> tourne +vite

#Courbe de modification de prise de virage en fonction de la vitesse
JumpFacteurDeVitesse			0.08			#+ ce facteur est élevé, - la prise de virage est rapide.

JumpVirageFacteur				0
JumpVirageTemps					200

JumpStrafeBasculeCoef			6500			#Pousse sur la boîte réelle; effet d'accompagner le virage

#------------ Derapages -------------------------------------------------------------------------------
JumpCoeffDeGrip					0.03			#adherence en temps normal du pod: 0=pas d'aherence 1=adherence max,pas de glissade
JumpVitesseDeDerapage			100			#si cette vitesse latérale est atteinte (en km/h), on commence à déraper
JumpCoeffDeDerapage				0.1			#adherence en temps slide du pod: 0=pas d'aherence 1=adherence max,pas de glissade

#------------ Aerofreins ------------------------------------------------------------------------------
JumpAerofreinCoef				40000			#Aerofrein brutal quand les 2 cotes sont actives
JumpAerofreinCoteCoef			1000			#Aerofrein de cote
JumpAerofreinCoteFacteur		0
JumpAerofreinCoteTemps			200





















#--------------------------------------------------------------------------------------------------------
#--------- Pas besoin de toucher a ce qui suit ----------------------------------------------------------
#--------------------------------------------------------------------------------------------------------
FlagDImmobilite			0			#Ceci est un booleen: 0=FALSE
AmortissementTranslation	0			#0.6			#-|  ( + de 1 = environnement visqueux )
FlagDirOS				1			#Ceci est un booleen: 0=FALSE
FlagPosOS				1			#Ceci est un booleen: 0=FALSE
RayDirectionX			0
RayDirectionY			0
RayDirectionZ			-1
RessortLongueur			0
VitesseDAccelerationMax			250		#100	#250
FacteurInitialDAcceleration		0.15	#6	#0.25
StrafeTranslationCoef			0			#Légère dérive en latéral dans les virages
JumpVitesseDAccelerationMax			250		#100	#250
JumpFacteurInitialDAcceleration		0.15	#6	#0.25
JumpStrafeTranslationCoef		0				#Pousse sur la boîte réelle; effet d'accompagner le virage

