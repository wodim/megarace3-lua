MUL_choixtablo25={sel}

-- Function 'Init'
function MUL_choixtablo25:Init()
self.sel = 0
end

-- Function 'Update'
function MUL_choixtablo25:Update()

	if lng[ing+3] ~= nil then
	ShowInterfaceEntity("MUL_choixtablo30")
	if IsSelected()==1 or GetLuaObject("MUL_option03").Sel == ing + 3 then
		PrintStringOn("MUL_choixtablo25" ,lng[ing+3].nng	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo26" ,lng[ing+3].nnt	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo27" ,lng[ing+3].nnbp	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo28" ,lng[ing+3].nmode	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo29" ,lng[ing+3].ntype	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
--		PrintStringOn("MUL_choixtablo30" ,lng[ing+3].nstatus	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo31" ,lng[ing+3].nping	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		ChangeTexture("MUL_choixtablo30","etat",lng[ing+3].nstatus)
	else
		PrintStringOn("MUL_choixtablo25" ,lng[ing+3].nng	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo26" ,lng[ing+3].nnt	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo27" ,lng[ing+3].nnbp	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo28" ,lng[ing+3].nmode	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo29" ,lng[ing+3].ntype	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
--		PrintStringOn("MUL_choixtablo30" ,lng[ing+3].nstatus	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo31" ,lng[ing+3].nping	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		ChangeTexture("MUL_choixtablo30","etat",lng[ing+3].nstatus)
	end
	else
		HideInterfaceEntity("MUL_choixtablo30")
	end


	if PushUpSelected() == 1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("MUL_choixtablo17")
	end

	if PushDownSelected() == 1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if lng[ing+4] ~= nil then ing = ing + 1 end
	end

	if PushEnterSelected() == 1 and lng[ing+3] ~= nil then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		GetLuaObject("MUL_option03").Sel = ing + 3
		Selected("MUL_option03")
	end

	if PushEscSelected() == 1 then
		StopEsc()
		GetLuaObject("MUL_option03").Sel = ""
		Selected("MUL_option04")
	end

end

-- Function 'End'
function MUL_choixtablo25:End()

end

