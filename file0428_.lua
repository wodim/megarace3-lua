#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------
#				PARAMETRAGE DE L'ASSERVISSEMENT DES PODS IA
#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------



AngleMax		25	# angle en degrée maximum autoriser pour regagner la spline

CoeffAngle		1.5	# coeff de l'angle en fonction de la distance de la spline

CoeffRotation		1	# coeff de rotation en fonction de la vitesse 
				# (avec 1 on tourne avec une force égale à la vitesse )

AttenuationRotation  	10	# on réduit la force de rotation quand le delta entre l'angle souhaité 
				# et l'angle courant et inférieur à cette valeur

Tolerance		0.5	# en mêtre , en dessous de cette écart en le pod et la spline
				# on considére le pod sur la spline

DistanceDetectCol		7	# distance (en mêtre) de détection des collision


ConeVisionTir		10	# delta d'angle entre le pod et sa cible pour que celui ci puisse effectivement tirer


Emmerdage		4	# distance lattéral à partir du quel un pod ia se met devant un autre pod pour le géner



#------------ Pptes du setOrientationInHardcode -------------
FacteurDeCouple			0.9
FacteurDeForce			0.9
CoupleMax				100
ForceTranslationMax		6