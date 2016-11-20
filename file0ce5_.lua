t_emet_eboul={tomb}

function t_emet_eboul:Init()
	SetEntityDamage("o3d_p_kyu1",100)
	SetEntityDamageMult("o3d_p_kyu1",2)
	CreateEventFallingObjects( "E_K_You", "t_emet_eboul", "o3d_p_kyu1", "",5)
	FallingObjectsSetLaunchPptiesFlagGenerationPointArray( "E_K_You",  0 )
	FallingObjectsSetLaunchPptiesGenerationDensity( "E_K_You", 2)
	FallingObjectsSetLaunchPptiesLaunchRate( "E_K_You",3)
	FallingObjectsSetLaunchPptiesLifeTime( "E_K_You", 0)
	FallingObjectsSetTouchPptiesFlagSurvive( "E_K_You", 1)
	FallingObjectsSetTouchPptiesFlagStayTrigger( "E_K_You", 0 )
	FallingObjectsChangeGravityDirection( "E_K_You", "t_emet_eboul", 0, -1, 0)
	FallingObjectsChangeGravityValue( "E_K_You","t_emet_eboul" , 2000000)
	FallingObjectsSetTouchPptiesFlagDestroyable( "E_K_You", 1 )
	self.tomb = -1
	

end

function t_emet_eboul:Update()

	if self.tomb == 0 then
		-- Grondements au loin ...
		JoueSon3D("Eboul1", "t_emet_eboul", TRUE, -1)
		StartClock("CURRENT", 5, 0)

		StartEvent( "E_K_You" )
		self.tomb = 1
	end

	if self.tomb == 1 then
		FallingObjectsUpdate( "E_K_You")
	end



end

function t_emet_eboul:End()
	DeleteEvent( "E_K_You" )
end

function t_emet_eboul:Clock(id)
	if id == 0 then
		StoppeSon("Eboul1", "CURRENT")
	end
end
