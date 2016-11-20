o3d_planteC04={name,ne}

function o3d_planteC04:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil04",0)
	CreateEventPichnette( self.ne, "t_planteC04", 0, -1, 0, 4000 )
	PichnetteInsertEntity( self.ne, "projectil04", 0, -1, 0.2, 40, self.name, "emitter_crache", 8000, 5, 0.2 )
	loadSFX("projectil04","E","sfx_projection")
	PichnetteStop  ( self.ne, "projectil04")
	StartClock(self.name, 5, 0)
	
end

function o3d_planteC04:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC04:End()
	DeleteEvent(self.ne)
end

function o3d_planteC04:Clock(id)

	if id == 0 then
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 2.5, 1)
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil04")
		startSFX("E")
	end

end

function o3d_planteC04:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		stopSFX("E")
		PichnetteStop  ( self.ne, "projectil04")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
