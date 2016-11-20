RotationPivot01={}



function RotationPivot01:Init()

	-----------------------------------------------------------------------------------------
	--L'evenement de rotation d'objet est créé en même temps que son pivot (centre de la rotation)
	--Les parametres sont :
	--	* Nom de l'evenement
	--	* Nom du pivot
	--	* Axe de la rotation
	-----------------------------------------------------------------------------------------
	CreateEventRotativeObject( "rototo", "CURRENT", 0, 0, 1 )

end



function RotationPivot01:Update()

end



function RotationPivot01:End()

	-----------------------------------------------------------------------------------------
	--Effacement du champ de force
	-----------------------------------------------------------------------------------------
	DeleteEvent( "rototo" )
end
