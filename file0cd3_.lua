o3d_planteC={name,ne}

function o3d_planteC:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	StartEntityAnim(self.name,"plante_crache",0,1,1.5)
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil",0)
	CreateEventPichnette( self.ne, "t_planteC", 0, -1, 0, 4000 )
	PichnetteInsertEntity( self.ne, "projectil", 0, -1, 0.2, 32, self.name, "emitter_crache", 7000, 5, 0.2 )
	loadSFX("projectil","A","sfx_projection")
	LoadEntityAnim("projectil","projection")
	StartEntityAnim("projectil","projection",0,-1,1)
	PichnetteStop  ( self.ne, "projectil")
	StartClock(self.name, 2.5, 1)
	
end

function o3d_planteC:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC:End()
	DeleteEvent(self.ne)
end

function o3d_planteC:Clock(id)

	if id == 0 then
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil")
		startSFX("A")
	end

	if id == 2 then
		RestoreTemporarySpeed( "Player1")
		RestoreTemporaryAcceleration("Player1")
		RestoreTemporaryGrip( "Player1")
	end
end

function o3d_planteC:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		PichnetteStop  ( self.ne, "projectil")
		stopSFX("A")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
