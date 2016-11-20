RSO_Create={}

-- Function 'Init'
function RSO_Create:Init()
	
end

-- Function 'Update'
function RSO_Create:Update()

	if IsSelected()==1 then
--		PrintTextOn("CURRENT", 92, S_FONTE, S_MUMF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("CURRENT", 92, S_FONTE, S_MUMF,"LEFT", S_RSO_CREATE_S.r1, S_RSO_CREATE_S.v1,S_RSO_CREATE_S.b1,S_RSO_CREATE_S.a1,S_RSO_CREATE_S.r2,S_RSO_CREATE_S.v2,S_RSO_CREATE_S.b2,S_RSO_CREATE_S.a2)
	else
--		PrintTextOn("CURRENT", 92, S_FONTE, S_MUMF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintTextOn("CURRENT", 92, S_FONTE, S_MUMF,"LEFT", S_RSO_CREATE_NS.r1, S_RSO_CREATE_NS.v1,S_RSO_CREATE_NS.b1,S_RSO_CREATE_NS.a1,S_RSO_CREATE_NS.r2,S_RSO_CREATE_NS.v2,S_RSO_CREATE_NS.b2,S_RSO_CREATE_NS.a2)
	end

	if PushUpSelected() == 1 then
		StopUp()
		Selected("RSO_password")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_nomsession")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushRightSelected() == 1 and self.saisie == 0 then
		StopRight()
		Selected("RSO_bttablo01")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end


	if PushEnterSelected() == 1 then
		StopEnter()
		local nbc = ""..GetLuaObject("RSO_nbcourse").nbc
		local nbl = ""..GetLuaObject("RSO_opt1").nbl
		local nbj = ""..GetLuaObject("RSO_nombre").nbj
		setNetRaces(GetLuaObject("RSO_bttablo01").trckidx,GetLuaObject("RSO_bttablo02").trckidx,GetLuaObject("RSO_bttablo03").trckidx,GetLuaObject("RSO_bttablo04").trckidx,GetLuaObject("RSO_bttablo05").trckidx)
		if createGame( Sessname, nbj, PwdNet, GetLuaObject("RSO_mode").modedef, GetLuaObject("RSO_type").typdef, GetLuaObject("RSO_opt03").valtyp,nbl,GetLuaObject("RSO_opt04").friendly,GetLuaObject("RSO_opt2").bonuses,nbc) == FALSE then
			LoadInterface("Menu_Multi")
		else
			LoadInterface("Menu_multiwait")
		end
	end

end

-- Function 'End'
function RSO_Create:End()

end

