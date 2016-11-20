#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------
#				PARAMETRAGE DES PROPRIETES PHYSIQUES DU CIRCUIT
#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------



#-----------------------------------------------------------------------------------------------------
#					PROPRIETES INTRINSEQUES À L'OBJET PHYSIQUE
#-----------------------------------------------------------------------------------------------------
#
#	Tous ces paramètres sont propres à la consitution physique de l'objet.
#
#-----------------------------------------------------------------------------------------------------
Elasticite	0.3				#Coefficient d'elasticité	0(faible rebond)-->1(haut rebond)
Friction	1				#Coefficient de friction	0(glisse bcp)----->1(ne glisse pas)

GraviteX	0
GraviteY	0
GraviteZ	0

#--------------------------------------------------------------
#--------- Pas besoin de toucher a ce qui suit ----------------
#----- Ces coefs sont bidons puisque la track ne bouge pas ----
#--------------------------------------------------------------
Masse				1000		#Exprimée en kg.
AmortissementRotationX		2		#-|
AmortissementRotationY		2		# |=>Amortissement fluide dans l'air
AmortissementRotationZ		2		# |  (0=dans le vide / 1=dans l'air)
AmortissementTranslation	2		#-|  ( + de 1 = environnement visqueux )
FlagDImmobilite			1		#Ceci est un booleen: 0=FALSE

CoefChocConstant			0.02		#Pourcentage de perte de vitesse suite à un choc
CoefChocAngle				0.01		#Pourcentage identique au précédent et proportionnel à l'angle du choc

