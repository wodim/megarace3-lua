T_CercleV03={}

function T_CercleV03:Init()

end

function T_CercleV03:Update()
	
	if IsEntityLeaveTrigger("Player1", "CURRENT" ) == 1 then
	
		if DistanceEntityToEntity("Player1", "T_CercleV") > DistanceEntityToEntity("CURRENT", "T_CercleV") then
			AutoriseWrongWay(FALSE)
			AfficheWrongWay(TRUE)
		else
			AutoriseWrongWay(TRUE)
			AfficheWrongWay(FALSE)
		end

	end

end

function T_CercleV03:End()

end
