#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------
#				PARAMETRAGE DES PROPRIETES PHYSIQUES ET DYNAMIQUES DES PODS
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------



#------------------------------------------------------------------------------------------------------
#					PROPRIETES INTRINSEQUES AU POD
#------------------------------------------------------------------------------------------------------
Elasticite					0.8			#Coefficient d'elasticité	0(faible rebond)-->1(haut rebond)
Friction					0.2			#Coefficient de friction	0(glisse bcp)----->1(ne glisse pas)

Masse						100000		#En kg.

AmortissementRotationX				1
AmortissementRotationY				1
AmortissementRotationZ				1

AmortissementTranslation			0.1	#-|  ( + de 1 = environnement visqueux )

CoefChocConstant			0.05		#Pourcentage de perte de vitesse suite à un choc
CoefChocAngle				0.01		#Pourcentage identique au précédent et proportionnel à l'angle du choc



#--------------------------------------------------------------------------------------------------------
#--------- Pas besoin de toucher a ce qui suit ----------------------------------------------------------
#--------------------------------------------------------------------------------------------------------
FlagDImmobilite			1			#Ceci est un booleen: 0=FALSE
