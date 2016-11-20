t_vagued={oki, oki2}

function t_vagued:Init()
	self.oki = 0
	self.oki2 = 0
	CreateEventRotativeObject( "Cerclelec", "CURRENT", 1, 0, 0)

	RotativeObjectAttachEntity( "Cerclelec", "o3d_vague", 0 )
	EnableCollisionDetection( "o3d_vague", 1 )
	ConvertObjectToPhantom("o3d_vague")

	RotativeObjectAttachEntity( "Cerclelec", "o3d_vague01", 0 )
	EnableCollisionDetection( "o3d_vague01", 1 )
	ConvertObjectToPhantom("o3d_vague01")

	RotativeObjectAttachEntity( "Cerclelec", "o3d_vague02", 0 )
	EnableCollisionDetection( "o3d_vague02", 1 )
	ConvertObjectToPhantom("o3d_vague02")

	RotativeObjectAttachEntity( "Cerclelec", "o3d_vague03", 0 )
	EnableCollisionDetection( "o3d_vague03", 1 )
	ConvertObjectToPhantom("o3d_vague03")

	RotativeObjectAttachEntity( "Cerclelec", "o3d_vague04", 0 )
	EnableCollisionDetection( "o3d_vague04", 1 )
	ConvertObjectToPhantom("o3d_vague04")

end

function t_vagued:Update()

	if self.oki == 0 and IsEntityInTrigger( "Nano","CURRENT") == 1 then
	
		StartEvent("Cerclelec")
		self.oki = 1
		PrintDebug("Vague elec")
		
		SetPodIaRatrappage("Nano", 0, 200)
		
		DisplayMsgCata(268)
		
	end
		
	if self.oki2 == 0 and IsEntityInTrigger( "Player1","CURRENT") == 1 then
	 
		JoueSon3D("VagueELE", "o3d_vague", TRUE, -1)
		JoueSon3D("VagueELE", "o3d_vague01", TRUE, -1)
		JoueSon3D("VagueELE", "o3d_vague02", TRUE, -1)
		JoueSon3D("VagueELE", "o3d_vague03", TRUE, -1)
		JoueSon3D("VagueELE", "o3d_vague04", TRUE, -1)
		
		self.oki2 = 1
	end

end

function t_vagued:End()

	RotativeObjectDetachEntity("Cerclelec", "o3d_vague")
	RotativeObjectDetachEntity("Cerclelec", "o3d_vague01")
	RotativeObjectDetachEntity("Cerclelec", "o3d_vague02")
	RotativeObjectDetachEntity("Cerclelec", "o3d_vague03")
	RotativeObjectDetachEntity("Cerclelec", "o3d_vague04")

	DeleteEvent("Cerclelec")
end
