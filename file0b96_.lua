t_insex_01={ok}

function t_insex_01:Init()
	LoadEntityAnim("o3d_insext04","INSEX_saut02")
	self.ok = 0


end




function t_insex_01:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 and self.ok == 0) then
		StartEntityAnim("o3d_insext04","INSEX_saut02",-1,1,1.2)
		self.ok = 1
	end



end

function t_insex_01:End()
	
end


