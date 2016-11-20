RSO_type={texte1,idx1,chg,typdef}

-- Function 'Init'
function RSO_type:Init()
	HideInterfaceEntity("RSO_type")
	self.idx1 = 154
	self.chg = 0
	self.texte1 = ""
	self.typdef = ""
end

-- Function 'Update'
function RSO_type:Update()

	if self.chg == 0 then
		self.texte1 = GetText(96)..GetText(self.idx1)
		self.chg = 1

		if self.idx1 == 154 then
			self.typdef = "SOLO"
		else
			if self.idx1 == 155 then
				self.typdef = "TEAM"
			else
				if self.idx1 == 156 then
					self.typdef = "FLAG"
				else
					self.typdef = "FOX"
				end
			end
		end
		if GetLuaObject("RSO_mode").idx1 == 152 then
			if GetLuaObject("RSO_type").idx1 == 154 then
				StartModeNetASOLO()
			elseif GetLuaObject("RSO_type").idx1 == 155 then
				StartModeNetATEAM()
			elseif GetLuaObject("RSO_type").idx1 == 156 then
				StartModeNetAFLAG()
			elseif GetLuaObject("RSO_type").idx1 == 157 then
				StartModeNetAFOX()
			end
		elseif GetLuaObject("RSO_mode").idx1 == 153 then
			if GetLuaObject("RSO_type").idx1 == 154 then
				StartModeNetCSOLO()
			elseif GetLuaObject("RSO_type").idx1 == 155 then
				StartModeNetCTEAM()
			elseif GetLuaObject("RSO_type").idx1 == 156 then
				StartModeNetCFLAG()
			elseif GetLuaObject("RSO_type").idx1 == 157 then
				StartModeNetCFOX()
			end
		end
		GetLuaObject("RSO_bttablo01").first1 = 0
		GetLuaObject("RSO_opt1").refresh = 0
	end
	
	if IsSelected()==1 then

		PrintStringOn("CURRENT", self.texte1, S_FONTE, S_MUMF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", self.texte1, S_FONTE, S_MUMF,"CENTER", S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	end


	if PushUpSelected() == 1 then
		StopUp()
		Selected("RSO_mode")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_nbcourse")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushRightSelected() == 1 then
		StopRight()
		if self.idx1 < 157 then
			self.idx1 = self.idx1 + 1
		end
		self.chg = 0
	end


	if PushLeftSelected() == 1 then
		StopLeft()
		if self.idx1 > 154 then
			self.idx1 = self.idx1 - 1
		end
		self.chg = 0
	end

end

-- Function 'End'
function RSO_type:End()

end






