PRI_BT_CHOIXACTIF03={}

-- Function 'Init'
function PRI_BT_CHOIXACTIF03:Init()

end

-- Function 'Update'
function PRI_BT_CHOIXACTIF03:Update()


	if IsSelected()==1 and GetTrackState(MODE_CATASTROPHE) > 0 then
		PrintTextOn("CURRENT", 12, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("PRI_TXT_ECRANINFO", 13, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	elseif GetTrackState(MODE_CATASTROPHE) > 0 then
		PrintTextOn("CURRENT", 12, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	else
		PrintTextOn("CURRENT", 12, S_FONTE, S_MF,"LEFT", S_selg.r1, S_selg.v1,S_selg.b1,S_selg.a1,S_selg.r2,S_selg.v2,S_selg.b2,S_selg.a2)
	end


	if PushUpSelected()==1 then
		StopUp()
		Selected("PRI_BT_CHOIXACTIF02")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if GetTrackState(MODE_CARRIERE) > 0 then
			Selected("PRI_BT_CHOIXACTIF04")
		elseif GetPlatform()==PLATFORM_PS2 then
			Selected("PRI_BT_CHOIXACTIF06")
		else
			Selected("PRI_BT_CHOIXACTIF05")
		end
	end

	if PushEnterSelected()==1 then
		StopEnter()
		if GetTrackState(MODE_CATASTROPHE) > 0 then
			SetGlobalVariable("gAskToSave", FALSE)
			SetGlobalVariable("gCallSaveMenu", FALSE)
			SetGlobalVariable("gOnlyGameData", FALSE)
			SetGlobalVariable("gPlayerDataToo", FALSE)
			Selected("PRI_BT_SELECT")
			JoueSon2DNoInst("MenuVAL", 0,-1)
			setVideo( "sequence01", "sequence_01" )
			StartModeCatastrophe()		
			LoadInterface("Menu_Cata")
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end
end

-- Function 'End'
function PRI_BT_CHOIXACTIF03:End()

end
