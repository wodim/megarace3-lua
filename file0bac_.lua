T_stalact03={ok,speedo,waito}

function T_stalact03:Init()

	LoadEntityAnim("o3d_father_stalag03","stalag_alone03")

	CreateEventAlternateCollision( "Col_stalact4", "CURRENT", 1 )
	AlternateCollisionAttachEntity( "Col_stalact4", "o3d_c03" )
	self.ok = 0 
	SetEntityDamage("o3d_c03",50)
	SetEntityDamageMult( "o3d_c03", 1)
end




function T_stalact03:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then

		-- Craquements ...
		JoueSon3DOnAtomic("Stalact1", "o3d_father_stalag03", "stalag03", FALSE, -1)

		self.speedo = DistanceEntityToEntity("CURRENT","o3d_father_stalag03") / GetSpeed("Player1") * 0.36
		if self.speedo > 0.5 then self.speedo = 0.5 end
		StartEntityTimedAnim("o3d_father_stalag03","stalag_alone03",1,1,self.speedo)
		StartEvent( "Col_stalact4" )
		EnableCollisions("Col_stalact4",0)
		self.ok = 1

		-- Chute ...
		--JoueSon3DOnAtomic("Stalact2", "o3d_father_stalag03", "stalag_05", TRUE, -1)

	end

	if self.ok == 2 then
		AlternateCollisionUpdate("Col_stalact4")
	end

end

function T_stalact03:End()

	AlternateCollisionDetachEntity( "Col_stalact1", "o3d_c03" )
	DeleteEvent( "Col_stalact4" )

end
