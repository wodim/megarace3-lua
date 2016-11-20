#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------
#				PARAMETRAGE DU JEU
#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------



StartInterface		1	# ->1 on lance l'interface 
				# ->0 on start le mode arcade directement

PlayerIA			0	# ->1 c'est l'ia qui control le pod du joueur (pour tester IA)
				# ->0 c'est le joueur qui control le pod du joueur ( mode normal )

CreatPathIA		0	# ->1 on autorise la mémorisation des chemins pour l'ia ( cf touche de fonction f7,f8,f9)
				# ->0 impossible de lancer la mémorisation ( les touches de fonctions sont inactive )
				# rq: utile pour ne pas effacer les chemins bien mémoriser

DrawSegment		0	# ->1 on affiche les segments de tracks
				# ->0 mode normal on ne trace pas les segments

DisplayInfo		0	# ->1 on affiche les infos
				# ->0 pas d'affichage text

NoVideo			0  	# -> 1 pas de vidéo
				# ->0 normal les vidéos sont jouées

CheckSndLib		1	# ->1 on verifie la version de DirectSound
				# ->0 pas de verification

SndDebugMode		0	# ->1 on met CryoSound en mode debug
				# ->0 pas de mode debug pour CryoSound

NoSndLoading		1	# ->1 on n'essaie pas de loader un son s'il n'a pas ete charge prealablement
				# ->0 on essaie de loader le son s'il n'a pas ete charge prealablement

DrawInterfaceGame		1	# ->1 on affiche l'interface game
				# ->0 pas d'affichage d'interface game

NoSound			0	# ->1 pas de son
				# ->0 mode normal du son dans le jeu

CompteARebourd		1	# ->1 décompte 3,2,1,go
				# ->0 pas de decompte

NoVoice			0	# ->1 pas de voix
				# ->0 voix actives dans le jeu

MessageBox		0	# ->0 pas de messagebox
				# ->1 messagebox

Check_PP_In_Segments	1	# ->0 pas de calcul on utilise les data du .seg
				# ->1 on ne tiens pas compte des data du seg on recalcul pour chaque pp dans quel segment il est


