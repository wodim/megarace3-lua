T_CercleV={passed}

function T_CercleV:Init()

	self.passed = FALSE

end




function T_CercleV:Update()

	if IsEntityLeaveTrigger("Player1", "CURRENT" ) == 1 then
	
		if DistanceEntityToEntity("Player1", "T_CercleV01") > DistanceEntityToEntity("CURRENT", "T_CercleV01") then
			AutoriseWrongWay(FALSE)
			AfficheWrongWay(TRUE)
			
			StoppeSon("CercV", "o3d_ca05")
			--StoppeSon("CercV", "o3d_ca06")
		 	StoppeSon("CercV", "o3d_ca07")
		else
			AutoriseWrongWay(TRUE)
			AfficheWrongWay(FALSE)
			 
			JoueSon3D("CercV", "o3d_ca05", TRUE, -1)
			--JoueSon3D("CercV", "o3d_ca06", TRUE, -1)
			JoueSon3D("CercV", "o3d_ca07", TRUE, -1)
		end

	end
	
	if (self.passed == FALSE) and (IsEntityEnterInTrigger("Nano", "CURRENT") == 1) then
		self.passed = TRUE
	end

end

function T_CercleV:End()

end
