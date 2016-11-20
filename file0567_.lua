pop_choix02={}

-- Function 'Init'
function pop_choix02:Init()
end

-- Function 'Update'
function pop_choix02:Update()

	local idPopup = GetValuePopup()

	if (idPopup==0 ) then
		if GetCSFlag() == 0 then
			if GetTrackState(MODE_CARRIERE) < 8 and GetTrackState(MODE_CARRIERE) > 1 then
			if IsSelected()==1 then
				PrintTextOn("CURRENT", 683, S_FONTE, S_GF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
			else
				PrintTextOn("CURRENT", 683, S_FONTE, S_GF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
			end
			end
		else
			if IsSelected()==1 then
				PrintTextOn("CURRENT", 684, S_FONTE, S_GF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
			else
				PrintTextOn("CURRENT", 684, S_FONTE, S_GF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
			end
		end
	end

	if PushUpSelected() == TRUE then
		StopUp()
		if idPopup==0 then
			JoueSon2DNoInst("MenuHB", 0, -1)
			Selected("pop_choix01")
		end
	end

	if PushDownSelected() == TRUE then
		StopDown()
		if (idPopup==0) then
			JoueSon2DNoInst("MenuHB", 0, -1)
			if GetCSFlag() == 0 or GetTrackState(MODE_CARRIERE) == 8 or GetTrackState(MODE_CARRIERE) == 1 then 
				Selected("pop_choix01") 
			else
				Selected("pop_choix03")
			end
		end
	end

	if PushEnterSelected() == TRUE then
		StopEnter()
		if GetGlobalVariable("gPOPUP_state") ~= POPUP_STATE_WAIT then
			JoueSon2DNoInst("MenuVAL", 0, -1)
			ExitPopup(POPUP_CHOICE_2)
		end
	end

end

-- Function 'End'
function pop_choix02:End()
end
