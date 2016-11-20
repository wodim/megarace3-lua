OPTJ_YN_07={res}

-- Function 'Init'
function OPTJ_YN_07:Init()
	self.res = 650
	if GetPlatform() == PLATFORM_PC then
		HideInterfaceEntity("OPTJ_fleche_g06")
		HideInterfaceEntity("OPTJ_fleche06")
	end
end

-- Function 'Update'
function OPTJ_YN_07:Update()

	if GetPlatform() == PLATFORM_PS2 then

		if PushUpSelected()==1 then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("OPTJ_YN_06")
		end

		if PushDownSelected()==1 then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("OPTJ_TXT_08")
		end

		if PushRightSelected()==1 then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.res == 650 then
				self.res = 651
			else
				self.res = 650
			end
		end

		if PushLeftSelected()==1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.res == 650 then
				self.res = 651
			else
				self.res = 650
			end
		end

		if IsSelected()==1 then
			PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		PrintTextOn("OPTJ_TXT_07", 720, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	end

end

-- Function 'End'
function OPTJ_YN_07:End()
end
