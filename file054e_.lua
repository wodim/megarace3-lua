OPTJ_TXT_08={}

-- Function 'Init'
function OPTJ_TXT_08:Init()
end

-- Function 'Update'
function OPTJ_TXT_08:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 16, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 16, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if GetPlatform() == PLATFORM_PS2 then
			Selected("OPTJ_YN_07")
		elseif GetLuaObject("OPTJ_YN_06").aff == 1 then
			Selected("OPTJ_YN_06")
		else
			Selected("OPTJ_YN_05")
		end
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("OPTJ_YN_01")
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0, -1)
		Selected("OPTJ_BT_SELECT")
		if GetPlatform() == PLATFORM_PC	 then
			LoadInterface("Menu_Ctrl")
		else
			LoadInterface("Menu_Pad")
		end
	end

	if PushRightSelected()==1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		Selected("OPTJ_TXT_Credits")
	end
end

-- Function 'End'
function OPTJ_TXT_08:End()
end
