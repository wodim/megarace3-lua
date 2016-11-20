T_K_Yo_fin={pass}

function T_K_Yo_fin:Init()
	self.pass = 0
end




function T_K_Yo_fin:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then  
	--  and T_K_Yo.tomb == 0) then
		StopEvent( "E_K_You00" )
		StopEvent( "E_K_You01" )
		StopEvent( "E_K_You02" )
		self.pass = 1
	end


end

function T_K_Yo_fin:End()
end
