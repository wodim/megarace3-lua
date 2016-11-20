T_K_Yo1={tomb}

function T_K_Yo1:Init()

	CreateEventFallingObjects( "E_K_You04", "o3d_ze_kyu4", "o3d_p_kyu2", "",7)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You04",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You04", 5)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You04",3)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You04", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You04", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You04", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You04", "o3d_ze_kyu4", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You04","o3d_ze_kyu4" , 2000000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You04", 1 )

	self.tomb = 0
end




function T_K_Yo1:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.tomb == 0) then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "o3d_ze_kyu4", TRUE, -1)
		
		DisplayMsgCata(263)

		StartEvent( "E_K_You04" )
		self.tomb = 1
	end

	if self.tomb == 1 then
		FallingObjectsUpdate( "E_K_You04");
	end

end

function T_K_Yo1:End()
	DeleteEvent( "E_K_You04" )

end
