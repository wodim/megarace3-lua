T_CercleA01={passed}

function T_CercleA01:Init()

	self.passed = FALSE

end




function T_CercleA01:Update()

	if self.passed == FALSE and IsEntityEnterInTrigger("Nano", "CURRENT" ) == 1 then
		 self.passed = TRUE
	end
	
	if (IsEntityEnterInTrigger("Player1", "CURRENT" ) == 1 ) then
	
		StopEvent("CercleRotate")
		 
		StoppeSon("CercANTI", "o3d_ca01")
		StoppeSon("CercANTI", "o3d_ca02")
		StoppeSon("CercANTI", "o3d_ca03")
		StoppeSon("CercANTI", "o3d_ca04")
		 
		JoueSon3D("CercV", "o3d_ca05", TRUE, -1)
		--JoueSon3D("CercV", "o3d_ca06", TRUE, -1)
		JoueSon3D("CercV", "o3d_ca07", TRUE, -1)

	end

end

function T_CercleA01:End()


end
