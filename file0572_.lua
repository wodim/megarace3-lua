PRA_BT_BACK={aff}

-- Function 'Init'
function PRA_BT_BACK:Init()
	if GetPlatform() == PLATFORM_PS2 then
		self.aff = 1
	else
		self.aff = 0
		HideInterfaceEntity("PRA_BT_BACK01")
	end

end

-- Function 'Update'
function PRA_BT_BACK:Update()

	if self.aff == 1 then
	if IsSelected()==1 then
		PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_bback.r1, S_bback.v1,S_bback.b1, S_bback.a1, S_bback.r2, S_bback.v2, S_bback.b2, S_bback.a2)
	end
	end

end

-- Function 'End'
function PRA_BT_BACK:End()

end

