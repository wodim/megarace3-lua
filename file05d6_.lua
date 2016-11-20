MUL_choixtablo01={}

-- Function 'Init'
function MUL_choixtablo01:Init()
end

-- Function 'Update'
function MUL_choixtablo01:Update()

	if lng[ing] ~= nil then
	ShowInterfaceEntity("MUL_choixtablo06")
	if IsSelected() == 1 or GetLuaObject("MUL_option03").Sel == ing then
		PrintStringOn("MUL_choixtablo01" ,lng[ing].nng	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo02" ,lng[ing].nnt	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo03" ,lng[ing].nnbp	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo04" ,lng[ing].nmode	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo05" ,lng[ing].ntype	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
--		PrintStringOn("MUL_choixtablo06" ,lng[ing].nstatus	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		PrintStringOn("MUL_choixtablo07" ,lng[ing].nping	, S_FONTE, S_MUPF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
		ChangeTexture("MUL_choixtablo06","etat",lng[ing].nstatus)
	else
		PrintStringOn("MUL_choixtablo01" ,lng[ing].nng	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo02" ,lng[ing].nnt	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo03" ,lng[ing].nnbp	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo04" ,lng[ing].nmode	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo05" ,lng[ing].ntype	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
--		PrintStringOn("MUL_choixtablo06" ,lng[ing].nstatus	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		PrintStringOn("MUL_choixtablo07" ,lng[ing].nping	, S_FONTE, S_MUPF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
		ChangeTexture("MUL_choixtablo06","etat",lng[ing].nstatus)
	end
	else
			HideInterfaceEntity("MUL_choixtablo06")
	end

	if PushUpSelected() == 1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if ing > 0 then ing = ing - 1 end
	end

	if PushDownSelected() == 1 then
		StopDown()
		if lng[ing + 1] ~= nil then
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("MUL_choixtablo09")
		end
	end

	if PushEnterSelected() == 1 and lng[ing] ~= nil then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		GetLuaObject("MUL_option03").Sel = ing
		GetLuaObject("MUL_Fond").idx = 0
		Selected("MUL_option03")
	end

	if PushEscSelected() == 1 then
		StopEsc()
		GetLuaObject("MUL_option03").Sel = ""
		GetLuaObject("MUL_Fond").idx = 0
		Selected("MUL_option04")
	end


end

-- Function 'End'
function MUL_choixtablo01:End()

end

