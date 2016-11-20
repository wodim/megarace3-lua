T_stalact02={ok,speedo,waito}

function T_stalact02:Init()

	LoadEntityAnim("o3d_father_stalag02","stalag_alone02")

	CreateEventAlternateCollision( "Col_stalact3", "CURRENT", 1 )
	AlternateCollisionAttachEntity( "Col_stalact3", "o3d_c02" )
	self.ok = 0 
	SetEntityDamage("o3d_c02",50)
	SetEntityDamageMult( "o3d_c02", 1)
	
end




function T_stalact02:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then

		-- Craquements ...
		JoueSon3DOnAtomic("Stalact1", "o3d_father_stalag02", "stalag02", FALSE, -1)

		self.speedo = DistanceEntityToEntity("CURRENT","o3d_father_stalag02") / GetSpeed("Player1") * 0.36
		if self.speedo > 0.5 then self.speedo = 0.5 end
		StartEntityTimedAnim("o3d_father_stalag02","stalag_alone02",1,1,self.speedo)
		StartEvent( "Col_stalact3" )
		EnableCollisions("Col_stalact3",0)
		self.ok = 1

		-- Chute ...
		--JoueSon3DOnAtomic("Stalact2", "o3d_father_stalag02", "stalag_04", TRUE, -1)

	end

	if self.ok == 2 then
		AlternateCollisionUpdate("Col_stalact3")
	end

end

function T_stalact02:End()

	AlternateCollisionDetachEntity( "Col_stalact1", "o3d_c02" )
	DeleteEvent( "Col_stalact3" )

end
