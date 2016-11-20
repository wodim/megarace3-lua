PRI_BT_CHOIXACTIF05={}

-- Function 'Init'
function PRI_BT_CHOIXACTIF05:Init()

end

-- Function 'Update'
function PRI_BT_CHOIXACTIF05:Update()

	if GetPlatform() == PLATFORM_PC then
	if IsSelected()==1 then
		PrintTextOn("CURRENT", 3, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("PRI_TXT_ECRANINFO", 4, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	else
		PrintTextOn("CURRENT", 3, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		if GetTrackState(MODE_CARRIERE) > 0 then
			Selected("PRI_BT_CHOIXACTIF04")
		elseif GetTrackState(MODE_CATASTROPHE) > 0 then
			Selected("PRI_BT_CHOIXACTIF03")
		else
			Selected("PRI_BT_CHOIXACTIF01")
		end
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected()==1 then
		StopDown()
		Selected("PRI_BT_CHOIXACTIF06")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushEnterSelected()==1 then
		StopEnter()
		SetGlobalVariable("gAskToSave", FALSE)
		SetGlobalVariable("gCallSaveMenu", FALSE)
		SetGlobalVariable("gOnlyGameData", FALSE)
		SetGlobalVariable("gPlayerDataToo", FALSE)
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("PRI_BT_SELECT")
		setVideo( "sequence14", "sequence_14" )
		LoadInterface("Menu_Multi")

	end
	end
end

-- Function 'End'
function PRI_BT_CHOIXACTIF05:End()

end

