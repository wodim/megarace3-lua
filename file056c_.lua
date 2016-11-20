popig_back01={}

-- Function 'Init'
function popig_back01:Init()
	HideInterfaceEntity("CURRENT")
	if GetPlatform() == PLATFORM_PC then
		HideInterfaceEntity("popig_back02")
	end
end

-- Function 'Update'
function popig_back01:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 651, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 651, S_FONTE, S_PF,"CENTER", S_bsel.r1, S_bsel.v1,S_bsel.b1,S_bsel.a1,S_bsel.r2,S_bsel.v2,S_bsel.b2,S_bsel.a2)
	end

	if PushLeftSelected() == TRUE then
		StopLeft()
		Selected("popig_select01")
	end

	if PushRightSelected() == TRUE then
		StopRight()
		Selected("popig_select01")
	end

	if PushEnterSelected() == TRUE then
		StopEnter()
		ExitPopup(0)
	end


end

-- Function 'End'
function popig_back01:End()
end
