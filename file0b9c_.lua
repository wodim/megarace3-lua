T_K_Yo={tomb}

function T_K_Yo:Init()


	CreateEventFallingObjects( "E_K_You00", "o3d_ze_kyu1", "o3d_p_kyu1", "",2)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You00",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You00", 3)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You00",2)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You00", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You00", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You00", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You00", "o3d_ze_kyu1", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You00","o3d_ze_kyu1" , 2500000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You00", 1 )

	CreateEventFallingObjects( "E_K_You01", "o3d_ze_kyu2", "o3d_p_kyu4", "",3)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You01",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You01", 3)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You01",1)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You01", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You01", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You01", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You01", "o3d_ze_kyu2", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You01", "o3d_ze_kyu2", 2200000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You01", 1 )


	CreateEventFallingObjects( "E_K_You02", "o3d_ze_kyu3", "o3d_p_kyu3", "",2)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray("E_K_You02",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You02", 2)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You02", 1)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You02", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You02", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You02", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You02", "o3d_ze_kyu3", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You02", "o3d_ze_kyu3", 1900000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You02", 1 )

	self.tomb = 0


end




function T_K_Yo:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.tomb == 0) then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "o3d_ze_kyu1", TRUE, -1)
		
		DisplayMsgCata(263)

		StartEvent( "E_K_You00" )
		StartEvent( "E_K_You01" )
		StartEvent( "E_K_You02" )
		self.tomb = 1
	end

	if self.tomb == 1 then
		FallingObjectsUpdate( "E_K_You00");
		FallingObjectsUpdate( "E_K_You01");
		FallingObjectsUpdate( "E_K_You02");
	end



end

function T_K_Yo:End()
	DeleteEvent( "E_K_You00" )
	DeleteEvent( "E_K_You01" )
	DeleteEvent( "E_K_You02" )

end
