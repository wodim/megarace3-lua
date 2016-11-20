o3d_planteC01={name,ne}

function o3d_planteC01:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil01",0)
	CreateEventPichnette( self.ne, "t_planteC01", 0, -1, 0, 5000 )
	PichnetteInsertEntity( self.ne, "projectil01", 0, -1, 0.2, 35, self.name, "emitter_crache", 7000, 5, 0.2 )
	loadSFX("projectil01","B","sfx_projection")
	PichnetteStop  ( self.ne, "projectil01")
	StartClock(self.name, 0, 0)
	
end

function o3d_planteC01:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC01:End()
	DeleteEvent(self.ne)
end

function o3d_planteC01:Clock(id)

	if id == 0 then
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 2.5, 1)
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil01")
		startSFX("B")
	end

end

function o3d_planteC01:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		PichnetteStop  ( self.ne, "projectil01")
		stopSFX("B")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
