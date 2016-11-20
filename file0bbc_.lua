T_CercleA={}

function T_CercleA:Init()
	CreateEventRotativeObject( "CercleRotate", "CURRENT", 1, 0, 0)

	RotativeObjectAttachEntity( "CercleRotate", "o3d_ca01", 0 )
	EnableCollisionDetection( "o3d_ca01", 1 )

	RotativeObjectAttachEntity( "CercleRotate", "o3d_ca02", 0 )
	EnableCollisionDetection( "o3d_ca02", 1 )

	RotativeObjectAttachEntity( "CercleRotate", "o3d_ca03", 0 )
	EnableCollisionDetection( "o3d_ca03", 1 )

	RotativeObjectAttachEntity( "CercleRotate", "o3d_ca04", 0 )
	EnableCollisionDetection( "o3d_ca04", 1 )
	
	
	EnableCollisionDetection("o3d_ca05", TRUE)
	EnableCollisionDetection("o3d_ca07", TRUE)
end




function T_CercleA:Update()

	if (IsEntityEnterInTrigger("Nano", "CURRENT" ) == 1 ) then
	
		 StartEvent("CercleRotate")
		 
		 JoueSon3D("CercANTI", "o3d_ca01", TRUE, -1)
		 JoueSon3D("CercANTI", "o3d_ca02", TRUE, -1)
		 JoueSon3D("CercANTI", "o3d_ca03", TRUE, -1)
		 JoueSon3D("CercANTI", "o3d_ca04", TRUE, -1)
	end

end

function T_CercleA:End()

	RotativeObjectDetachEntity("CercleRotate", "CURRENT")
	RotativeObjectDetachEntity("CercleRotate", "o3d_ca01")
	RotativeObjectDetachEntity("CercleRotate", "o3d_ca02")
	RotativeObjectDetachEntity("CercleRotate", "o3d_ca03")
	RotativeObjectDetachEntity("CercleRotate", "o3d_ca04")

	DeleteEvent("CercleRotate")

end
