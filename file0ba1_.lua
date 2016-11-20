T_K_Yo2_fin={}

function T_K_Yo2_fin:Init()

end




function T_K_Yo2_fin:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
	-- and T_K_Yo2.tomb == 1) then

		-- Stoppe les grondements au loin ...
		StoppeSon("Eboul1", "o3d_ze_kyu5")

		StopEvent( "E_K_You05" )
		StopEvent( "E_K_You06" )
	end
end

function T_K_Yo2_fin:End()
end
