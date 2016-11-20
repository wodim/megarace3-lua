MUL_choixtablo17={sel}

-- Function 'Init'
function MUL_choixtablo17:Init()
self.sel = 0
end

-- Function 'Update'
function MUL_choixtablo17:Update()

	if lng[ing+2] ~= nil then
	ShowInterfaceEntity("MUL_choixtablo22")
	if IsSelected()==1 or GetLuaObject("MUL_option03").Sel == ing + 2 then
		PrintStringOn("MUL_choixtablo17" ,lng[ing+2].nng	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo18" ,lng[ing+2].nnt	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo19" ,lng[ing+2].nnbp	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo20" ,lng[ing+2].nmode	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo21" ,lng[ing+2].ntype	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
--		PrintStringOn("MUL_choixtablo22" ,lng[ing+2].nstatus	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo23" ,lng[ing+2].nping	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		ChangeTexture("MUL_choixtablo22","etat",lng[ing+2].nstatus)
	else
		PrintStringOn("MUL_choixtablo17" ,lng[ing+2].nng	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo18" ,lng[ing+2].nnt	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo19" ,lng[ing+2].nnbp	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo20" ,lng[ing+2].nmode	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo21" ,lng[ing+2].ntype	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
--		PrintStringOn("MUL_choixtablo22" ,lng[ing+2].nstatus	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo23" ,lng[ing+2].nping	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		ChangeTexture("MUL_choixtablo22","etat",lng[ing+2].nstatus)
	end
	else
			HideInterfaceEntity("MUL_choixtablo22")
	end

	if PushUpSelected() == 1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("MUL_choixtablo09")
	end

	if PushDownSelected() == 1 then
		StopDown()
		if lng[ing + 3] ~= nil then
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("MUL_choixtablo25")
		end
	end

	if PushEnterSelected() == 1 and lng[ing+2] ~= nil then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		GetLuaObject("MUL_option03").Sel = ing + 2
		Selected("MUL_option03")
	end

	if PushEscSelected() == 1 then
		StopEsc()
		GetLuaObject("MUL_option03").Sel = ""
		Selected("MUL_option04")
	end
end

-- Function 'End'
function MUL_choixtablo17:End()

end

