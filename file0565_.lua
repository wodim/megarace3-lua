pop_back01={}

-- Function 'Init'
function pop_back01:Init()

	if GetPlatform() == PLATFORM_PC then
		HideInterfaceEntity("pop_back02")
	end

end

-- Function 'Update'
function pop_back01:Update()

	local s = GetGlobalVariable("gPOPUP_state")

	if s==POPUP_STATE_NONE then

	elseif s==POPUP_STATE_YES_NO then
--		if IsSelected()==1 then
--			PrintTextOn("CURRENT", 651, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
--		else
--			PrintTextOn("CURRENT", 651, S_FONTE, S_PF,"CENTER", S_bback.r1, S_bback.v1,S_bback.b1, S_bback.a1, S_bback.r2, S_bback.v2, S_bback.b2, S_bback.a2)
--		end
		if IsSelected()==1 then
			PrintTextOn("CURRENT", 651, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintTextOn("CURRENT", 651, S_FONTE, S_PF,"CENTER", S_bsel.r1, S_bsel.v1,S_bsel.b1,S_bsel.a1,S_bsel.r2,S_bsel.v2,S_bsel.b2,S_bsel.a2)
		end

		if PushLeftSelected() == TRUE then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0, -1)
			Selected("pop_select01")
		end

		if PushRightSelected() == TRUE then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0, -1)
			Selected("pop_select01")
		end

		if PushEnterSelected() == TRUE then
			StopEnter()
			JoueSon2DNoInst("MenuVAL", 0, -1)
			ExitPopup(POPUP_NO)
		end

	elseif s==POPUP_STATE_CHOICE then
--		if IsSelected()==1 then
--			PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
--		else
--			PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_bback.r1, S_bback.v1,S_bback.b1, S_bback.a1, S_bback.r2, S_bback.v2, S_bback.b2, S_bback.a2)
--		end
--		if IsSelected()==1 then
--			PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
--		else
--			PrintTextOn("CURRENT", 26, S_FONTE, S_PF,"CENTER", S_bsel.r1, S_bsel.v1,S_bsel.b1,S_bsel.a1,S_bsel.r2,S_bsel.v2,S_bsel.b2,S_bsel.a2)
--		end

	elseif s==POPUP_STATE_WAIT then

	end

end

-- Function 'End'
function pop_back01:End()
end
