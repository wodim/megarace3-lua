OPTJ_TXT_Credits={}

-- Function 'Init'
function OPTJ_TXT_Credits:Init()
end

-- Function 'Update'
function OPTJ_TXT_Credits:Update()

	if IsSelected()==1 then
		PrintTextOn("CURRENT", 711, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 711, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end


	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0, -1)
		Selected("OPTJ_BT_SELECT")
		LoadInterface("Menu_Credits")
	end

	if PushLeftSelected()==1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		Selected("OPTJ_TXT_08")
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
end

-- Function 'End'
function OPTJ_TXT_Credits:End()
end
