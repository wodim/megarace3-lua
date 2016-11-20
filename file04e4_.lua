LOA_BT_SELECT={aff}

-- Function 'Init'
function LOA_BT_SELECT:Init()
	if GetPlatform() == PLATFORM_PS2 then
		self.aff = 1
	else
		self.aff = 0
		HideInterfaceEntity("LOA_BT_SELECT01")
	end

end

-- Function 'Update'
function LOA_BT_SELECT:Update()


	if self.aff == 1 then
	if IsSelected()==1 then
		PrintTextOn("CURRENT", 27, S_FONTE, S_PF,"CENTER", S_sel.r1,S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 27, S_FONTE, S_PF,"CENTER", S_bsel.r1,S_bsel.v1,S_bsel.b1,S_bsel.a1,S_bsel.r2,S_bsel.v2,S_bsel.b2,S_bsel.a2)
	end
	end


end

-- Function 'End'
function LOA_BT_SELECT:End()

end

