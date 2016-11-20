ForceFieldTrigger01={}


function ForceFieldTrigger01:Init()

	-----------------------------------------------------------------------------------------
	--Le champ de force est créé a l'init du trigger définissant la zone d'action
	--Les parametres sont :
	--	* Nom de l'evenement
	--	* Nom du trigger définissant la zone d'action
	--	* Force du champ (peut etre negative)
	--	* Vitesse d'etablissement du champ
	--	* Flag indiquant si la force est centrale (force>0 = attraction; force<0 = repulsion)
	--	* Direction eventuelle du champ de Force
	--	* Masque d'action du champ de force selon le type d'objet : 001(1) = pod / 010(2) = missile / 100(4) = objet.COL autre
	-----------------------------------------------------------------------------------------
	ForceFieldCreateEvent( "rototo", "CURRENT", 100000, 1, 0, 0, 0, 1, 7 )

end


function ForceFieldTrigger01:Update()

	-----------------------------------------------------------------------------------------
	--Des qu'une entree dans le trigger detectee,
	--les entites concernees se voient soumises au champ de force
	-----------------------------------------------------------------------------------------
	if( SelectEntityEnterInTrigger( "ForceFieldTrigger01", "ALL_ENTITIES", "" ) == 1 ) then

		-----------------------------------------------------------------------------------------
		--Examen des entites entrées et application du champ de force sur celles qui y sont soumises
		-----------------------------------------------------------------------------------------
		ForceFieldCheckSelectedInto( "rototo" )

	end

	-----------------------------------------------------------------------------------------
	--Des qu'une sorite du trigger detectee,
	--les entites concernees se voient sorties du champ de force
	-----------------------------------------------------------------------------------------
	if( SelectEntityLeaveTrigger( "ForceFieldTrigger01", "ALL_ENTITIES", "" ) == 1 ) then

		-----------------------------------------------------------------------------------------
		--Examen des entites sorties et fin du champ de force
		-----------------------------------------------------------------------------------------
		ForceFieldCheckSelectedOutOf( "rototo" )

	end

end



function ForceFieldTrigger01:End()

	-----------------------------------------------------------------------------------------
	--Effacement du champ de force
	-----------------------------------------------------------------------------------------
	DeleteEvent( "rototo" )

end
