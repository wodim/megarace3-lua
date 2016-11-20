t_gb={pass}

function t_gb:Init()
	self.pass = 0
end




function t_gb:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.pass == 0) then
		self.pass = 1 


	end

end

function t_gb:End()
end



