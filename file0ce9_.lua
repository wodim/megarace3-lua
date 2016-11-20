t_pluie_off={pass}

function t_pluie_off:Init()
	self.pass = 0	
end

function t_pluie_off:Update()

	if self.pass == 0 then
		if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
			self.pass = 1	
			PrintDebug("Pluis OFF")	
		end
	end


end

function t_pluie_off:End()
end