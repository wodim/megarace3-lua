t_pluie_on={pass}

function t_pluie_on:Init()
	self.pass = 0
end

function t_pluie_on:Update()

	if self.pass == 0 then
		if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
			self.pass = 1		
		end
	end

end

function t_pluie_on:End()
end