T_K_Yo2={tomb}

function T_K_Yo2:Init()

	CreateEventFallingObjects( "E_K_You05", "o3d_ze_kyu5", "o3d_p_kyu5", "",3)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You05",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You05", 5)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You05",3)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You05", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You05", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You05", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You05", "o3d_ze_kyu5", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You05","o3d_ze_kyu5" , 2000000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You05", 1 )

	CreateEventFallingObjects( "E_K_You06", "o3d_ze_kyu6", "o3d_p_kyu6", "",3)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You06",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You06", 3)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You06",2)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You06", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You06", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You06", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You06", "o3d_ze_kyu6", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You06","o3d_ze_kyu6" , 2000000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You06", 1 )


	self.tomb = 0
end




function T_K_Yo2:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.tomb == 0) then
			
		local delay = R_DELAY_1/ GetSpeed("Player1")
		if delay > 0.8 then
			delay = 0.8
		end
		StartClock("T_K_Yo2", delay, 0)
		
		delay = R_DELAY_2 / GetSpeed("Player1")
		if delay > 6.5 then
			delay = 6.5
		end
		StartClock("T_K_Yo2", delay, 1)
		
		DisplayMsgCata(263)
	end

	if self.tomb == 1 then
		FallingObjectsUpdate( "E_K_You05")
		FallingObjectsUpdate( "E_K_You06")
	end
end

function T_K_Yo2:End()
	DeleteEvent( "E_K_You05" )
	DeleteEvent( "E_K_You06" )

end


function T_K_Yo2:Clock(Id)

	if Id == 0 then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "o3d_ze_kyu5", TRUE, -1)

		self.tomb = 1
		StartEvent( "E_K_You06" )
	end

	if Id == 1 then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "o3d_ze_kyu6", TRUE, -1)

		StartEvent( "E_K_You05" )
	end

end
