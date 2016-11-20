MUL_option01={}

-- Function 'Init'
function MUL_option01:Init()

end

-- Function 'Update'
function MUL_option01:Update()

	if IsSelected()==1 then
--		PrintTextOn("CURRENT", 80, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("CURRENT", 80, S_FONTE, S_PF,"CENTER", S_RSO_JOIN_S.r1, S_RSO_JOIN_S.v1,S_RSO_JOIN_S.b1,S_RSO_JOIN_S.a1,S_RSO_JOIN_S.r2,S_RSO_JOIN_S.v2,S_RSO_JOIN_S.b2,S_RSO_JOIN_S.a2)
	else
--		PrintTextOn("CURRENT", 80, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintTextOn("CURRENT", 80, S_FONTE, S_PF,"CENTER", S_RSO_JOIN_NS.r1, S_RSO_JOIN_NS.v1,S_RSO_JOIN_NS.b1,S_RSO_JOIN_NS.a1,S_RSO_JOIN_NS.r2,S_RSO_JOIN_NS.v2,S_RSO_JOIN_NS.b2,S_RSO_JOIN_NS.a2)
	end

--	if PushUpSelected() == 1 then
--		StopUp()
--		JoueSon2DNoInst("MenuHB", 0,-1)
--		Selected("MUL_choixtablo01")
--		GetLuaObject("MUL_option03").Sel = ""
--		GetLuaObject("MUL_Fond").idx = 2
--	end

	if PushLeftSelected() == 1 then
		StopLeft()
		Selected("MUL_option04")
	end

	if PushRightSelected() == 1 then
		StopRight()
		Selected("MUL_option03")
	end

	if PushEnterSelected() == 1 then
		StopEnter()
		affng = 0
	end

	if PushEscSelected()==1 then
		StopEsc()
		Selected("MUL_back1")
		terminateNetwork()
		LoadInterface("Menu_Principal")
	end


end

-- Function 'End'
function MUL_option01:End()

end

