RSO_mode={idx1,texte1,chg,modedef}

-- Function 'Init'
function RSO_mode:Init()
	HideInterfaceEntity("RSO_mode")
	self.idx1 = 152
	self.chg = 0
	self.texte1 = ""
	self.modedef = ""
end

-- Function 'Update'
function RSO_mode:Update()

	if self.chg == 0 then
		self.texte1 = GetText(95)..GetText(self.idx1)
		self.chg = 1
		if self.idx1 == 152 then
			self.modedef = "ARCADE"
		else
			self.modedef = "CARRIERE"
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
		Selected("RSO_nombre")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_type")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushRightSelected() == 1 then
		StopRight()
		self.idx1 = 153
		self.chg = 0
	end

	if PushLeftSelected() == 1 then
		self.idx1 = 152
		self.chg = 0
	end

end

-- Function 'End'
function RSO_mode:End()

end

function RSO_mode:Clock(Id)
end
