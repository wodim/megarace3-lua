NME_9={}

-- Function 'Init'
function NME_9:Init()
end

-- Function 'Update'
function NME_9:Update()

	if GetPlatform() == 1 then

		local car=strchar(GetAlphaChar(NMEI9))
		if IsSelected() == 1 then
			PrintStringOn("CURRENT",car,S_FONTE,S_TPF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT",car,S_FONTE,S_TPF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		
		if PushUpSelected() == TRUE then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			NMEI9 = NMEI9 + 1
			if NMEI9 >= GetAlphaSize() then
				NMEI9 = 0
			elseif NMEI9 < 0 then
				NMEI9 = GetAlphaSize() - 1
			end
		end

		if PushDownSelected() == TRUE then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			NMEI9 = NMEI9 - 1
			if NMEI9 >= GetAlphaSize() then
				NMEI9 = 0
			elseif NMEI9 < 0 then
				NMEI9 = GetAlphaSize() - 1
			end
		end

		if PushRightSelected() == TRUE then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)

			ShowInterfaceEntity("NME_9")
			HideInterfaceEntity("NME_9_S")

			HideInterfaceEntity("NME_10")
			ShowInterfaceEntity("NME_10_S")

			Selected("NME_10")
		end

		if PushLeftSelected() == TRUE then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)

			ShowInterfaceEntity("NME_9")
			HideInterfaceEntity("NME_9_S")

			HideInterfaceEntity("NME_8")
			ShowInterfaceEntity("NME_8_S")

			Selected("NME_8")
		end

		if PushEnterSelected() == TRUE then
			StopEnter()
			Selected("NME_BT_SELECT")
		end

		if PushEscSelected() == TRUE then
			StopEsc()
			player = GetLuaObject("NME_Fond").oldplay
			Selected("NME_BT_BACK")
			LoadInterface(gComeFromNME)
			gComeFromNME = nil
		end

	end
	
end

-- Function 'End'
function NME_9:End()
end
