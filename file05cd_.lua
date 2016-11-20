RSO_opt04={aff,txt,friendly,re}

-- Function 'Init'
function RSO_opt04:Init()
		self.re = 651
		self.txt = GetText(721).." "..GetText(self.re)
		self.friendly = "0"

end

-- Function 'Update'
function RSO_opt04:Update()


	if GetLuaObject("RSO_type").typdef == "FLAG" or GetLuaObject("RSO_type").typdef == "TEAM" then
		self.aff = 1
		ShowInterfaceEntity("RSO_FlechepG08")
		ShowInterfaceEntity("RSO_FlechepD08")
	else
		HideInterfaceEntity("RSO_FlechepG08")
		HideInterfaceEntity("RSO_FlechepD08")
		self.aff = 0
	end

	if self.aff == 1 then
		if IsSelected()==1 then
			PrintStringOn("CURRENT", self.txt, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT",  self.txt, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushRightSelected() == 1 then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.re == 650 then 
				self.re = 651 
				self.friendly = "0"
			else 
				self.re = 650 
				self.friendly = "1"
			end
			self.txt = GetText(721).." "..GetText(self.re)
		end

		if PushLeftSelected() == 1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.re == 650 then 
				self.re = 651 
				self.friendly = "0"
			else 
				self.re = 650 
				self.friendly = "1"
			end
			self.txt = GetText(721).." "..GetText(self.re)
	end


		if PushUpSelected() == 1 then
			StopUp()
			Selected("RSO_opt2")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end

		if PushDownSelected() == 1 then
			StopDown()
			Selected("RSO_password")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end
	end

end

-- Function 'End'
function RSO_opt04:End()

end

