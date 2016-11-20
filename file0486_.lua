CTRL_keyboard01={}

-- Function 'Init'
function CTRL_keyboard01:Init()
end

-- Function 'Update'
function CTRL_keyboard01:Update()

	if PushLeftSelected()==1 then
		StopLeft()
		if gCurConfig>0 then
			JoueSon2DNoInst("MenuGD", 0,-1)
			gCurConfig = gCurConfig - 1
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end

	if PushRightSelected()==1 then
		StopRight()
		if gCurConfig<GetConfigNum()-1 then
			JoueSon2DNoInst("MenuGD", 0,-1)
			gCurConfig = gCurConfig + 1
		else
			JoueSon2DNoInst("MenuIMP", 0,-1)
		end
	end

	local configName = GetText(700)
	if gCurConfig>=0 then
		configName=GetConfigName(gCurConfig)
		if configName==nil then
			configName = GetText(700)
		end
	end

	if IsSelected()==1 then
		PrintStringOn("CURRENT", configName, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", configName, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("CTRL_choixfonction11")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("CTRL_choixfonction01")
	end
end

-- Function 'End'
function CTRL_keyboard01:End()
end
