MI_BT_CHOIXACTIF01={}

-- Function 'Init'
function MI_BT_CHOIXACTIF01:Init()
end

-- Function 'Update'
function MI_BT_CHOIXACTIF01:Update()

	if IsSelected() == 1 then
		PrintTextOn("CURRENT", 500, S_FONTE, S_Fmi, "CENTER", S_selmi.r1, S_selmi.v1, S_selmi.b1, S_selmi.a1,S_selmi.r2,S_selmi.v2,S_selmi.b2,S_selmi.a2)
	else
		PrintTextOn("CURRENT", 500, S_FONTE, S_Fmi, "CENTER", S_nselmi.r1, S_nselmi.v1, S_nselmi.b1, S_nselmi.a1, S_nselmi.r2, S_nselmi.v2, S_nselmi.b2, S_nselmi.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		if GetGlobalVariable("gCanContinue")==TRUE then
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("MI_BT_CHOIXACTIF03")
		else
			if GetGlobalVariable("gCanLoad")==TRUE then
				JoueSon2DNoInst("MenuHB", 0,-1)
				Selected("MI_BT_CHOIXACTIF02")
			end
		end
	end

	if PushDownSelected()==1 then
		StopDown()
		if GetGlobalVariable("gCanLoad")==TRUE then
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("MI_BT_CHOIXACTIF02")
		end
	end


	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		PrintDebug("----->>>>> New Game ...")
		Selected("MI_BT_SELECT")
		LoadInterface("Menu_Name")
	end

end

-- Function 'End'
function MI_BT_CHOIXACTIF01:End()
end

-- Fonction 'Clock'
function MI_BT_CHOIXACTIF01:Clock(Id)
end
