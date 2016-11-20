OPTJ_YN_06={res,aff}

-- Function 'Init'
function OPTJ_YN_06:Init()

	if GetPlatform() == PLATFORM_PC then
		if getVideoTextActive()==TRUE then
			self.res = 650
		else
			self.res = 651
		end
		self.aff = 0
		HideInterfaceEntity("OPTJ_fleche_g05")
		HideInterfaceEntity("OPTJ_fleche05")
	else
		self.res = 651
		self.aff = 1
	end

end

-- Function 'Update'
function OPTJ_YN_06:Update()

	if GetPlatform() == PLATFORM_PS2 then

		if PushUpSelected()==1 then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("OPTJ_YN_05")
		end

		if PushDownSelected()==1 then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("OPTJ_YN_07")
		end

		if PushRightSelected()==1 then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.res == 650 then
				self.res = 651
				SetMode16_9(TRUE)
			end
		end

		if PushLeftSelected()==1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.res == 651 then
				SetMode16_9(FALSE)
				self.res = 650
			end
		end

		if IsSelected()==1 then
			PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
			PrintTextOn("OPTJ_TXT_06", 718, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
			PrintTextOn("OPTJ_TXT_06", 718, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

	elseif self.aff == 1 then
		if PushUpSelected()==1 then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("OPTJ_YN_05")
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
				setVideoTextActive(FALSE)
			else
				self.res = 650
				setVideoTextActive(TRUE)
				if getVideoActive()==FALSE then
					GetLuaObject("OPTJ_YN_02").res = 650
					setVideoActive(TRUE)
				end
			end
		end
	
		if PushLeftSelected()==1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.res == 650 then
				self.res = 651
				setVideoTextActive(FALSE)
			else
				self.res = 650
				setVideoTextActive(TRUE)
				if getVideoActive()==FALSE then
					GetLuaObject("OPTJ_YN_02").res = 650
					setVideoActive(TRUE)
				end
			end
		end
	
		if IsSelected()==1 then
			PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
			PrintTextOn("OPTJ_TXT_06", 716, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintTextOn("CURRENT", self.res, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
			PrintTextOn("OPTJ_TXT_06", 716, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
	end

end

-- Function 'End'
function OPTJ_YN_06:End()
end



