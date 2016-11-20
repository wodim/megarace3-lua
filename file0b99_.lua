t_insex03={ok}

function t_insex03:Init()
	LoadEntityAnim("o3d_insext05","INSEX_saut01")
	self.ok = 0
end




function t_insex03:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then
		StartEntityAnim("o3d_insext05","INSEX_saut01",-1,1,1.2)
		self.ok = 1
	end

end

function t_insex03:End()
end
