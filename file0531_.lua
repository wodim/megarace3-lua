NME_1={}

-- Function 'Init'
function NME_1:Init()

--	if GetPlatform() == 1 then
--		local car = 0
--		while strchar(GetAlphaChar(car)) ~= "A" do
--			car = car + 1
--		end
--		NMEI1 = car
--	end

end

-- Function 'Update'
function NME_1:Update()

	if GetPlatform() == 1 then

		local car=strchar(GetAlphaChar(NMEI1))
		if IsSelected() == TRUE then
			PrintStringOn("CURRENT",car,S_FONTE,S_TPF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT",car,S_FONTE,S_TPF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushUpSelected() == TRUE then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			NMEI1 = NMEI1 + 1
			if NMEI1 >= GetAlphaSize() then
				NMEI1 = 0
			elseif NMEI1 < 0 then
				NMEI1 = GetAlphaSize() - 1
			end
		end

		if PushDownSelected() == TRUE then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			NMEI1 = NMEI1 - 1
			if NMEI1 >= GetAlphaSize() then
				NMEI1 = 0
			elseif NMEI1 < 0 then
				NMEI1 = GetAlphaSize() - 1
			end
		end

		if PushRightSelected() == TRUE then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)

			ShowInterfaceEntity("NME_1")
			HideInterfaceEntity("NME_1_S")

			HideInterfaceEntity("NME_2")
			ShowInterfaceEntity("NME_2_S")

			Selected("NME_2")
		end

		if PushLeftSelected() == TRUE then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)

			ShowInterfaceEntity("NME_1")
			HideInterfaceEntity("NME_1_S")

			HideInterfaceEntity("NME_11")
			ShowInterfaceEntity("NME_11_S")

			Selected("NME_11")
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
function NME_1:End()
end
