NME_3={}

-- Function 'Init'
function NME_3:Init()
end

-- Function 'Update'
function NME_3:Update()

	if GetPlatform() == 1 then

		local car=strchar(GetAlphaChar(NMEI3))
		if IsSelected() == 1 then
			PrintStringOn("CURRENT",car,S_FONTE,S_TPF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT",car,S_FONTE,S_TPF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushUpSelected() == TRUE then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			NMEI3 = NMEI3 + 1
			if NMEI3 >= GetAlphaSize() then
				NMEI3 = 0
			elseif NMEI3 < 0 then
				NMEI3 = GetAlphaSize() - 1
			end
		end

		if PushDownSelected() == TRUE then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			NMEI3 = NMEI3 - 1
			if NMEI3 >= GetAlphaSize() then
				NMEI3 = 0
			elseif NMEI3 < 0 then
				NMEI3 = GetAlphaSize() - 1
			end
		end

		if PushRightSelected() == TRUE then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)

			ShowInterfaceEntity("NME_3")
			HideInterfaceEntity("NME_3_S")

			HideInterfaceEntity("NME_4")
			ShowInterfaceEntity("NME_4_S")

			Selected("NME_4")
		end

		if PushLeftSelected() == TRUE then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)

			ShowInterfaceEntity("NME_3")
			HideInterfaceEntity("NME_3_S")

			HideInterfaceEntity("NME_2")
			ShowInterfaceEntity("NME_2_S")
			Selected("NME_2")
		end

		if PushEnterSelected()==TRUE then
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
function NME_3:End()
end
