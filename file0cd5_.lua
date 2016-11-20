o3d_planteC02={name,ne}

function o3d_planteC02:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil02",0)
	CreateEventPichnette( self.ne, "t_planteC02", 0, -1, 0, 5000 )
	PichnetteInsertEntity( self.ne, "projectil02", 0, -1, 0.2, 27, self.name, "emitter_crache", 7000, 5, 0.2 )
	loadSFX("projectil02","C","sfx_projection")
	PichnetteStop  ( self.ne, "projectil02")
	StartClock(self.name, 4, 0)
	
end

function o3d_planteC02:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC02:End()
	DeleteEvent(self.ne)
end

function o3d_planteC02:Clock(id)

	if id == 0 then
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 2.5, 1)
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil02")
		startSFX("C")
	end

end

function o3d_planteC02:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		stopSFX("C")
		PichnetteStop  ( self.ne, "projectil02")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name,1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
