OPTJ_YN_02={res}

-- Function 'Init'
function OPTJ_YN_02:Init()

	if getVideoActive()==TRUE then
		self.res = 650
	else
		self.res = 651
	end

end

-- Function 'Update'
function OPTJ_YN_02:Update()

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("OPTJ_YN_01")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("OPTJ_YN_03")
	end

	if PushRightSelected()==1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		if self.res == 650 then
			self.res = 651
			setVideoActive(FALSE)
			if getVideoTextActive()==TRUE then
				GetLuaObject("OPTJ_YN_03").res = 651
				setVideoTextActive(FALSE)
			end
		else
			self.res = 650
			setVideoActive(TRUE)
		end
	end

	if PushLeftSelected()==1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		if self.res == 650 then
			self.res = 651
			setVideoActive(FALSE)
			if getVideoTextActive()==TRUE then
				GetLuaObject("OPTJ_YN_03").res = 651
				setVideoTextActive(FALSE)
			end
		else
			self.res = 650
			setVideoActive(TRUE)
		end
	end

	if IsSelected()==1 then
		PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("OPTJ_TXT_02", 713, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintTextOn("OPTJ_TXT_02", 713, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

end

-- Function 'End'
function OPTJ_YN_02:End()
end
