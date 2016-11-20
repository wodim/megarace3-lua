T_stalact01={ok,speedo,waito}

function T_stalact01:Init()

	LoadEntityAnim("o3d_father_stalag01","stalag_alone01")

	CreateEventAlternateCollision( "Col_stalact2", "CURRENT", 1 )
	AlternateCollisionAttachEntity( "Col_stalact2", "o3d_c01" )
	SetEntityDamage("o3d_c01",50)
	SetEntityDamageMult( "o3d_c01", 1)

	self.ok = 0 

end




function T_stalact01:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then

		-- Craquements ...
		JoueSon3DOnAtomic("Stalact1", "o3d_father_stalag01", "stalag01", FALSE, -1)

		self.speedo = DistanceEntityToEntity("CURRENT","o3d_father_stalag01") / GetSpeed("Player1") * 0.36
		if self.speedo > 0.5 then self.speedo = 0.5 end
		StartEntityTimedAnim("o3d_father_stalag01","stalag_alone01",1,1,self.speedo)
		StartEvent( "Col_stalact2" )
		EnableCollisions("Col_stalact2",0)
		self.ok = 1

		-- Chute ...
		--JoueSon3DOnAtomic("Stalact2", "o3d_father_stalag01", "stalag_03", TRUE, -1)

	end

	if self.ok == 2 then
		AlternateCollisionUpdate("Col_stalact2")
	end

end

function T_stalact01:End()

	AlternateCollisionDetachEntity( "Col_stalact1", "o3d_c01" )
	DeleteEvent( "Col_stalact2" )
end
