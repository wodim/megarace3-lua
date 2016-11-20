o3d_planteC05={name,ne}

function o3d_planteC05:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil05",0)
	CreateEventPichnette( self.ne, "t_planteC05", 0, -1, 0, 5000 )
	PichnetteInsertEntity( self.ne, "projectil05", 0, -1, 0.2, 31, self.name, "emitter_crache", 8000, 5, 0.2 )
	loadSFX("projectil05","F","sfx_projection")
	PichnetteStop  ( self.ne, "projectil05")
	StartClock(self.name, 3.5, 0)
	
end

function o3d_planteC05:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC05:End()
	DeleteEvent(self.ne)
end

function o3d_planteC05:Clock(id)

	if id == 0 then
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 2.5, 1)
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil05")
		startSFX("F")
	end

end

function o3d_planteC05:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		stopSFX("F")
		PichnetteStop  ( self.ne, "projectil05")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
