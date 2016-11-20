#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------
#				PARAMETRAGE DES PROPRIETES PHYSIQUES ET DYNAMIQUES DES PODS
#------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------



#------------------------------------------------------------------------------------------------------
#					PROPRIETES INTRINSEQUES AU POD
#------------------------------------------------------------------------------------------------------
Elasticite					0.1			#Coefficient d'elasticité	0(faible rebond)-->1(haut rebond)
Friction					1			#Coefficient de friction	0(glisse bcp)----->1(ne glisse pas)

Masse						10000	#En kg.

AmortissementRotationX				0.1
AmortissementRotationY				0.1
AmortissementRotationZ				0.1

AmortissementTranslation			1.2	#-|  ( + de 1 = environnement visqueux )

CoefChocConstant			0.2		#Pourcentage de perte de vitesse suite à un choc
CoefChocAngle				0.1		#Pourcentage identique au précédent et proportionnel à l'angle du choc



#--------------------------------------------------------------------------------------------------------
#--------- Pas besoin de toucher a ce qui suit ----------------------------------------------------------
#--------------------------------------------------------------------------------------------------------
FlagDImmobilite			0			#Ceci est un booleen: 0=FALSE
