PAD_BT_SELECT={}

-- Function 'Init'
function PAD_BT_SELECT:Init()

end

-- Function 'Update'
function PAD_BT_SELECT:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 27, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 27, S_FONTE, S_PF,"CENTER", S_bsel.r1, S_bsel.v1,S_bsel.b1,S_bsel.a1,S_bsel.r2,S_bsel.v2,S_bsel.b2,S_bsel.a2)
	end

end

-- Function 'End'
function PAD_BT_SELECT:End()

end

