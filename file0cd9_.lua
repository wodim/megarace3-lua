o3d_planteC06={name,ne}

function o3d_planteC06:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil06",0)
	CreateEventPichnette( self.ne, "t_planteC06", 0, -1, 0, 4300 )
	PichnetteInsertEntity( self.ne, "projectil06", 0, -1, 0.2, 32, self.name, "emitter_crache", 8000, 5, 0.2 )
	loadSFX("projectil06","G","sfx_projection")
	PichnetteStop  ( self.ne, "projectil06")
	StartClock(self.name, 4, 0)
	
end

function o3d_planteC06:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC06:End()
	DeleteEvent(self.ne)
end

function o3d_planteC06:Clock(id)

	if id == 0 then
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 2.5, 1)
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil06")
		startSFX("G")
	end

end

function o3d_planteC06:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		stopSFX("G")
		PichnetteStop  ( self.ne, "projectil06")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
