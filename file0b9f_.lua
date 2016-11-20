T_K_Yo1_fin={}

function T_K_Yo1_fin:Init()

end




function T_K_Yo1_fin:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and T_K_Yo1.tomb == 1) then

		-- Stoppe les grondements au loin ...
		StoppeSon("Eboul1", "o3d_ze_kyu4")

		StopEvent( "E_K_You04" )
	end

end

function T_K_Yo1_fin:End()

end
