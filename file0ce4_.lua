t_eboulement={sfx}

function t_eboulement:Init()

	
end

function t_eboulement:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		GetLuaObject("t_emet_eboul").tomb = 0
	end

end

function t_eboulement:End()
end

function t_eboulement:Clock(id)
end