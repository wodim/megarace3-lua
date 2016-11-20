t_emeteboul01={tomb}

function t_emeteboul01:Init()
	SetEntityDamage("o3d_p_kyu02",100)
	SetEntityDamageMult("o3d_p_kyu02",2)
	CreateEventFallingObjects( "E_K_You1", "t_emeteboul01", "o3d_p_kyu02", "",5)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You1",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You1", 2)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You1",3)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You1", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You1", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You1", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You1", "t_emeteboul01", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You1","t_emeteboul01" , 2000000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You1", 1 )
	self.tomb = -1
	

end

function t_emeteboul01:Update()

	if self.tomb == 0 then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "CURRENT", TRUE, -1)
		StartClock("CURRENT", 5, 0)

		StartEvent( "E_K_You1" )
		self.tomb = 1
	end

	if self.tomb == 1 then
		FallingObjectsUpdate( "E_K_You1")
	end

	if self.tomb == 2 then
		StoppeSon("Eboul1", "CURRENT")
		
		StopEvent("E_K_You1")
		self.tomb = 3
	end

end

function t_emeteboul01:End()
	DeleteEvent( "E_K_You1" )
end

function t_emeteboul01:Clock(id)
	if id == 0 then
		StoppeSon("Eboul1", "CURRENT")
	end
end
