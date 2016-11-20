PRI_BT_CHOIXACTIF04={}

-- Function 'Init'
function PRI_BT_CHOIXACTIF04:Init()

end

-- Function 'Update'
function PRI_BT_CHOIXACTIF04:Update()


	if IsSelected()==1 and GetTrackState(MODE_CARRIERE) > 0 then
		PrintTextOn("CURRENT", 14, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("PRI_TXT_ECRANINFO", 15, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	elseif GetTrackState(MODE_CARRIERE) > 0 then
		PrintTextOn("CURRENT", 14, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	else
		PrintTextOn("CURRENT", 14, S_FONTE, S_MF,"LEFT", S_selg.r1, S_selg.v1,S_selg.b1,S_selg.a1,S_selg.r2,S_selg.v2,S_selg.b2,S_selg.a2)
	end


	if PushUpSelected()==1 then
		StopUp()
		Selected("PRI_BT_CHOIXACTIF03")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected()==1 then
		StopDown()
		if GetPlatform() == PLATFORM_PC then
			Selected("PRI_BT_CHOIXACTIF05")
		else
			Selected("PRI_BT_CHOIXACTIF06")
		end
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushEnterSelected()==1 then
		StopEnter()
		if GetTrackState(MODE_CARRIERE) > 0 then
			SetGlobalVariable("gAskToSave", FALSE)
			SetGlobalVariable("gCallSaveMenu", FALSE)
			SetGlobalVariable("gOnlyGameData", FALSE)
			SetGlobalVariable("gPlayerDataToo", FALSE)
			JoueSon2DNoInst("MenuVAL", 0,-1)
			Selected("PRI_BT_SELECT")
			setVideo( "sequence13", "sequence_13" )
			SetGlobalVariable("Carlance",0)
			StartModeCarriere()		
			LoadInterface("Menu_Carriere")
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end
end

-- Function 'End'
function PRI_BT_CHOIXACTIF04:End()

end
