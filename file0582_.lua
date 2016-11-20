PRI_BT_CHOIXACTIF07={}

-- Function 'Init'
function PRI_BT_CHOIXACTIF07:Init()

end

-- Function 'Update'
function PRI_BT_CHOIXACTIF07:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 22, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("PRI_TXT_ECRANINFO", 23, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	else
		PrintTextOn("CURRENT", 22, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRI_BT_CHOIXACTIF06")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRI_BT_CHOIXACTIF01")
	end

	if PushEnterSelected()==1 then
		StopEnter()
		SetGlobalVariable("gAskToSave", FALSE)
		SetGlobalVariable("gCallSaveMenu", FALSE)
		SetGlobalVariable("gOnlyGameData", FALSE)
		SetGlobalVariable("gPlayerDataToo", FALSE)
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("PRI_BT_SELECT")
		LoadInterface("Menu_LoadSave")
--		LoadInterface("Menu_Name")
	end
end

-- Function 'End'
function PRI_BT_CHOIXACTIF07:End()

end
