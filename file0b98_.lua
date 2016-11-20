t_insex02={ok}

function t_insex02:Init()

	LoadEntityAnim("o3d_insext06","INSEX_saut03")
	self.ok = 0
end




function t_insex02:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then
		StartEntityAnim("o3d_insext06","INSEX_saut03",-1,1,1.2)
		self.ok = 1
	end




end

function t_insex02:End()

end
