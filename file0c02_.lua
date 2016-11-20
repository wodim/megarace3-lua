JumpTrigger01={}


function JumpTrigger01:Init()

	-----------------------------------------------------------------------------------------
	--Le champ de force est créé a l'init du trigger définissant la zone d'action
	--Les parametres sont :
	--	* Nom de l'evenement
	--	* Nom du trigger définissant la zone d'action
	--	* Flag indiquant si le pod saute avec les pptés de son .INI ou celles de l'évênement
	--	* Flag indiquant si la saut suit la direction indiquée ou s'il la direction est automatique
	--	* Valeur de la gravité
	--	* Direction éventuelle du saut
	-----------------------------------------------------------------------------------------
	JumpCreateEvent( "rototo", "CURRENT", 0, 1, 1200, 0, -1, 0 )

end


function JumpTrigger01:Update()

	-----------------------------------------------------------------------------------------
	--Des qu'une entree dans le trigger detectee,
	--les entites concernees se voient soumises au champ de force
	-----------------------------------------------------------------------------------------
	if( SelectEntityEnterInTrigger( "JumpTrigger01", "ALL_ENTITIES", "" ) == 1 ) then

		-----------------------------------------------------------------------------------------
		--Examen des entites entrées et application du champ de force sur celles qui y sont soumises
		-----------------------------------------------------------------------------------------
		InsertSelectedIntoJump( "rototo" )

	end

	-----------------------------------------------------------------------------------------
	--Des qu'une sorite du trigger detectee,
	--les entites concernees se voient sorties du champ de force
	-----------------------------------------------------------------------------------------
	if( SelectEntityLeaveTrigger( "JumpTrigger01", "ALL_ENTITIES", "" ) == 1 ) then

		-----------------------------------------------------------------------------------------
		--Examen des entites sorties et fin du champ de force
		-----------------------------------------------------------------------------------------
		RemoveSelectedFromJump( "rototo" )

	end

end



function JumpTrigger01:End()

	-----------------------------------------------------------------------------------------
	--Effacement du champ de force
	-----------------------------------------------------------------------------------------
	DeleteEvent( "rototo" )

end
