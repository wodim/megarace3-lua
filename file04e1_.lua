LOA_BT_POD_NUM={}

-- Function 'Init'
function LOA_BT_POD_NUM:Init()
end

-- Function 'Update'
function LOA_BT_POD_NUM:Update()

	if GetLuaObject("LOA_FOND").change==FALSE then
		PrintStringOn("CURRENT", GetPodNumPSI(), S_FONTE, S_PF,"RIGHT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	end

end

-- Function 'End'
function LOA_BT_POD_NUM:End()
end
