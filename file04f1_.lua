LS_BT_CHOIXACTIF01={}

-- Function 'Init'
function LS_BT_CHOIXACTIF01:Init()
end

-- Function 'Update'
function LS_BT_CHOIXACTIF01:Update()

	if IsSelected() == 1 then
		PrintTextOn("CURRENT", 500, S_FONTE, S_LSF, "CENTER", S_sel.r1, S_sel.v1, S_sel.b1, S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 500, S_FONTE, S_LSF, "CENTER", S_nsel.r1, S_nsel.v1, S_nsel.b1, S_nsel.a1, S_nsel.r2, S_nsel.v2, S_nsel.b2, S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("LS_BT_CHOIXACTIF04")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("LS_BT_CHOIXACTIF02")
	end


	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0, -1)
		PrintDebug("----->>>>> New Game ...")
		LoadInterface("Menu_Name")
	end

end

-- Function 'End'
function LS_BT_CHOIXACTIF01:End()
end

-- Fonction 'Clock'
function LS_BT_CHOIXACTIF01:Clock(Id)
end
