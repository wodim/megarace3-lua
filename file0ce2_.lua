t_eboul_end={}

function t_eboul_end:Init()
end

function t_eboul_end:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		GetLuaObject("t_emeteboul01").tomb = 2
		GetLuaObject("t_emeteboul02").tomb = 2
	end

end

function t_eboul_end:End()
end