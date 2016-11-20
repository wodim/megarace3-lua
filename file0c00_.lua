RotationMoving01={}


function RotationMoving01:Init()
	
	-----------------------------------------------------------------------------------------
	--A l'init, l'objet est attache a l'evenement en tant qu'objet mobile (tournant autour du pivot)
	-----------------------------------------------------------------------------------------
	RotativeObjectAttachEntity( "rototo", "CURRENT", 1000000 )

end

function RotationMoving01:Update()

end

function RotationMoving01:End()

	-----------------------------------------------------------------------------------------
	--A la fin, l'objet est detache de l'evenement
	-----------------------------------------------------------------------------------------
	RotativeObjectDetachEntity( "rototo", "CURRENT", 1000000 )

end
