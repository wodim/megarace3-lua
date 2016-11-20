T_stalact={ok,speedo,waito}

function T_stalact:Init()

	LoadEntityAnim("o3d_father_stalag","stalag_alone")

	CreateEventAlternateCollision( "Col_stalact1", "CURRENT", 1 )
	AlternateCollisionAttachEntity( "Col_stalact1", "o3d_c" )
	SetEntityDamage("o3d_c",20)
	SetEntityDamageMult( "o3d_c", 2)

	self.ok = 0 

end




function T_stalact:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then

		-- Stoppe les grondements au loin des eboulements ...
		StoppeSon("Eboul1", "o3d_ze_kyu1")

		-- Craquements ...
		JoueSon3DOnAtomic("Stalact1", "o3d_father_stalag", "stalag", FALSE, -1)

		self.speedo = DistanceEntityToEntity("CURRENT","o3d_father_stalag") / GetSpeed("Player1") * 0.36
		if self.speedo > 0.5 then self.speedo = 0.5 end
		StartEntityTimedAnim("o3d_father_stalag","stalag_alone",1,1,self.speedo)
		StartEvent( "Col_stalact1" )
		EnableCollisions("Col_stalact1",0)
		self.ok = 1
		PrintDebug("Anim Jouée")

		-- Chute ...
		--JoueSon3DOnAtomic("Stalact2", "o3d_father_stalag", "stalag_02", TRUE, -1)
	end

	if self.ok == 2 then
		AlternateCollisionUpdate("Col_stalact1")
	end

end

function T_stalact:End()

	AlternateCollisionDetachEntity( "Col_stalact1", "o3d_c" )
	DeleteEvent( "Col_stalact1" )
end
