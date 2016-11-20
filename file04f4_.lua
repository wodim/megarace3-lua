LS_BT_CHOIXACTIF04={}

-- Function 'Init'
function LS_BT_CHOIXACTIF04:Init()
end

-- Function 'Update'
function LS_BT_CHOIXACTIF04:Update()

	if IsSelected() == 1 then
		PrintTextOn("CURRENT", 503, S_FONTE, S_LSF, "CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 503, S_FONTE, S_LSF, "CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0, -1)
		Selected("LS_BT_CHOIXACTIF03")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("LS_BT_CHOIXACTIF01")
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0, -1)
		Selected("LS_BT_SELECT")
		gLS_mode	= LS_MODE_DEL
		gLS_state	= LS_STATE_ENTER
	end
end

-- Function 'End'
function LS_BT_CHOIXACTIF04:End()
end

-- Fonction 'Clock'
function LS_BT_CHOIXACTIF04:Clock(Id)
end
