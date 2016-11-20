CTRL_choixfonction01={flashing, clock, draw}

-- Function 'Init'
function CTRL_choixfonction01:Init()
	self.flashing = FALSE
	self.clock = clone(LUACLOCK)
	self.draw = TRUE
end

-- Function 'Update'
function CTRL_choixfonction01:Update()

	if IsInAcqMode()==FALSE and self.flashing==TRUE then
		self.flashing = FALSE
	end

	if PushEnterSelected()==TRUE then
		StopEnter()
		if IsInAcqMode()~=TRUE then
			self.flashing = TRUE
			self.clock.Start(self.clock)
			self.draw = TRUE
			SetConfigControl(gCurConfig, FIRE0_CTRL, CTRL_TIME_DELAY)
		end
	end

	local key = GetConfigControl(gCurConfig, FIRE0_CTRL)
	if key==nil then
		key = GetText(700)
	end

	if self.flashing==TRUE then
		local time = self.clock.Time(self.clock)
		if time>CTRL_TIME_DELAY_FLASHING then
			self.clock.Start(self.clock)
			if self.draw==FALSE then
				self.draw = TRUE
			else
				self.draw = FALSE
			end
		end
	else
		self.draw = TRUE
	end

	if IsSelected()==1 then
		PrintTextOn("CTRL_fonction01", 110, S_FONTE, S_LF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		if self.draw==TRUE then
			PrintStringOn("CURRENT", key, S_FONTE, S_LF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		end
	else
		PrintTextOn("CTRL_fonction01", 110, S_FONTE, S_LF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		if self.draw==TRUE then
			PrintStringOn("CURRENT", key, S_FONTE, S_LF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
	end

	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("CTRL_keyboard01")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("CTRL_choixfonction02")
	end

	if PushRightSelected()==1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		Selected("CTRL_choixfonction07")
	end

	if PushLeftSelected()==1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		Selected("CTRL_choixfonction07")
	end
end

-- Function 'End'
function CTRL_choixfonction01:End()
end
