t_emeteboul02={tomb}

function t_emeteboul02:Init()
	SetEntityDamage("o3d_p_kyu3",100)
	SetEntityDamageMult("o3d_p_kyu3",2)
	CreateEventFallingObjects( "E_K_You2", "t_emeteboul02", "o3d_p_kyu3", "",5)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You2",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You2", 2)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You2",3)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You2", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You2", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You2", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You2", "t_emeteboul02", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You2","t_emeteboul02" , 2000000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You2", 1 )
	self.tomb = -1
	

end

function t_emeteboul02:Update()

	if self.tomb == 0 then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "t_emeteboul02", TRUE, -1)
		StartClock("CURRENT", 5, 0)

		StartEvent( "E_K_You2" )
		self.tomb = 1
	end

	if self.tomb == 1 then
		FallingObjectsUpdate( "E_K_You2")
	end

	if self.tomb == 2 then
		StoppeSon("Eboul1", "CURRENT")
		
		StopEvent("E_K_You2")
		self.tomb = 3
	end


end

function t_emeteboul02:End()
	DeleteEvent( "E_K_You2" )
end

function t_emeteboul02:Clock(id)
	if id == 0 then
		StoppeSon("Eboul1", "CURRENT")
	end
end
