T_gb_end={pass}

function T_gb_end:Init()
	self.pass =0
end




function T_gb_end:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		self.pass = 1
	end

end

function T_gb_end:End()
end



function T_gb_end:Clock(Id)

end