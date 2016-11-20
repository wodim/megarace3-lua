t_eboul_start={}

function t_eboul_start:Init()
end

function t_eboul_start:Update()

	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		GetLuaObject("t_emeteboul01").tomb = 0
		GetLuaObject("t_emeteboul02").tomb = 0

	end

end

function t_eboul_start:End()
end