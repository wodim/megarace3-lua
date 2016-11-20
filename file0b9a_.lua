T_insex20={}

function T_insex20:Init()
	LoadEntityAnim("o3d_insext20","INSEX_mover")

end




function T_insex20:Update()


	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		StartEntityAnim("o3d_insext20","INSEX_mover",-1,1,1)
	end



end

function T_insex20:End()
	
end


