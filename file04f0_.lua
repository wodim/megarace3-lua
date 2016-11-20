LS_BT_BACK={}

-- Function 'Init'
function LS_BT_BACK:Init()
end

-- Function 'Update'
function LS_BT_BACK:Update()

	if GetPlatform() == PLATFORM_PS2 then
		if IsSelected()==1 then
			PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_bback.r1, S_bback.v1,S_bback.b1,S_bback.a1,S_bback.r2,S_bback.v2,S_bback.b2,S_bback.a2)
		end
	end

end

-- Function 'End'
function LS_BT_BACK:End()
end

