OPTJ_YN_05={res,aff}

-- Function 'Init'
function OPTJ_YN_05:Init()

	if GetPlatform() == PLATFORM_PC then
		self.res = GetClippingRatio()
		self.aff = 1
	else
		self.aff = 0
	end

end

-- Function 'Update'
function OPTJ_YN_05:Update()

	if self.aff == 1 then

		if PushRightSelected()==1 then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)
			self.res = self.res + 5
			if self.res > 100 then
				self.res = 100
			end
			SetClippingRatio(self.res)
		end

		if PushLeftSelected()==1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			self.res = self.res - 5
			if self.res < 0 then
				self.res = 0
			end
			SetClippingRatio(self.res)
		end

		if IsSelected()==1 then
			PrintStringOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
			PrintTextOn("OPTJ_TXT_05", 728, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
			PrintTextOn("OPTJ_TXT_05", 728, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushUpSelected()==1 then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("OPTJ_YN_04")
		end

		if PushDownSelected()==1 then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			if GetLuaObject("OPTJ_YN_06").aff == 1 then
				Selected("OPTJ_YN_06")
			else
				Selected("OPTJ_TXT_08")
			end

		end

	end

end

-- Function 'End'
function OPTJ_YN_05:End()
end


