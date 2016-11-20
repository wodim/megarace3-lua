MI_BT_CHOIXACTIF02={}

-- Function 'Init'
function MI_BT_CHOIXACTIF02:Init()
end

-- Function 'Update'
function MI_BT_CHOIXACTIF02:Update()

	if IsSelected() == 1 then
		PrintTextOn("CURRENT", 501, S_FONTE, S_Fmi, "CENTER", S_selmi.r1, S_selmi.v1, S_selmi.b1, S_selmi.a1,S_selmi.r2,S_selmi.v2,S_selmi.b2,S_selmi.a2)
	else
		if GetGlobalVariable("gCanLoad")==TRUE then
			PrintTextOn("CURRENT", 501, S_FONTE, S_Fmi, "CENTER", S_nselmi.r1, S_nselmi.v1, S_nselmi.b1, S_nselmi.a1, S_nselmi.r2, S_nselmi.v2, S_nselmi.b2, S_nselmi.a2)
		else
			PrintTextOn("CURRENT", 501, S_FONTE, S_Fmi, "CENTER", S_selg.r1, S_selg.v1, S_selg.b1, S_selg.a1, S_selg.r2, S_selg.v2, S_selg.b2, S_selg.a2)
		end
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("MI_BT_CHOIXACTIF01")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if GetGlobalVariable("gCanContinue")==TRUE then
			Selected("MI_BT_CHOIXACTIF03")
		else
			Selected("MI_BT_CHOIXACTIF01")
		end
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("MI_BT_SELECT")
		gLS_mode	= LS_MODE_LOAD
		gLS_state	= LS_STATE_ENTER
	end
end

-- Function 'End'
function MI_BT_CHOIXACTIF02:End()
end

-- Fonction 'Clock'
function MI_BT_CHOIXACTIF02:Clock(Id)
end
