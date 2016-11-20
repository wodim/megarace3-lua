AlternateCollisionTrigger01={}


function AlternateCollisionTrigger01:Init()

	CreateEventAlternateCollision( "rototo", "CURRENT", 0 )

	AlternateCollisionAttachEntity( "rototo", "box" )

	StartEvent( "rototo" )
end


function AlternateCollisionTrigger01:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_ENTITIES", "" ) == 1 ) then

		-----------------------------------------------------------------------------------------
		--Examen des entites entrées et application du champ de force sur celles qui y sont soumises
		-----------------------------------------------------------------------------------------
		AlternateCollisionSwitchCollisions( "rototo" )

	end

end



function AlternateCollisionTrigger01:End()

	-----------------------------------------------------------------------------------------
	--Effacement du champ de force
	-----------------------------------------------------------------------------------------
	DeleteEvent( "rototo" )

end
