o3d_planteC03={name,ne}

function o3d_planteC03:Init()
	self.name = GetEntityName()
	LoadEntityAnim(self.name,"plante_crache")
	self.ne = "Pichnette"..self.name
	EnableCollisionDetection("projectil03",0)
	CreateEventPichnette( self.ne, "t_planteC03", 0, -1, 0, 4500 )
	PichnetteInsertEntity( self.ne, "projectil03", 0, -1, 0.2, 30, self.name, "emitter_crache", 7000, 5, 0.2 )
	loadSFX("projectil03","D","sfx_projection")
	PichnetteStop  ( self.ne, "projectil03")
	StartClock(self.name, 2, 0)
	
end

function o3d_planteC03:Update()
	PichnetteUpdate(self.ne)
end

function o3d_planteC03:End()
	DeleteEvent(self.ne)
end

function o3d_planteC03:Clock(id)

	if id == 0 then
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 2.5, 1)
	end 

	if id == 1 then
		PichnetteStart ( self.ne, "projectil03")
		startSFX("D")
	end

end

function o3d_planteC03:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
		stopSFX("D")
		PichnetteStop  ( self.ne, "projectil03")
		StartEntityAnim(self.name,"plante_crache",0,1,1.5)
		StartClock(self.name, 1.6, 1)
		JoueSon3D("PlantLum", "CURRENT", FALSE, -1)
	end

end
