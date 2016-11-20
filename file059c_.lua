RSO_opt1={gm,nbl,txtx,refresh}

-- Function 'Init'
function RSO_opt1:Init()
	self.gm = GetGameMode()
	if ((self.gm == 7) or (self.gm == 11) or (self.gm ==8) or (self.gm==12)) then
		self.nbl = 3
		self.txtx = GetText(710).." "..self.nbl
	else
		self.nbl = 10
		self.txtx = GetText(723).." "..self.nbl
	end
end

-- Function 'Update'
function RSO_opt1:Update()

	if self.refresh == 0 then
		self.gm = GetGameMode()
		self.refresh = 1
		if ((self.gm == 7) or (self.gm == 11) or (self.gm ==8) or (self.gm==12)) then
			self.txtx = GetText(710).." "..self.nbl
		else
			self.txtx = GetText(723).." "..self.nbl
		end
	end

	if IsSelected()==1 then
		PrintStringOn("CURRENT", self.txtx, S_FONTE, S_MUMF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", self.txtx, S_FONTE, S_MUMF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		if self.nbl > 1 then self.nbl = self.nbl  - 1 end
		if ((self.gm == 7) or (self.gm == 11) or (self.gm ==8) or (self.gm==12)) then
			self.txtx = GetText(710).." "..self.nbl
		else
			self.txtx = GetText(723).." "..self.nbl
		end
		JoueSon2DNoInst("MenuGD", 0,-1)
	end

	if PushRightSelected() == 1 then
		StopRight()
		self.nbl = self.nbl  + 1
		if ((self.gm == 7) or (self.gm == 11) or (self.gm ==8) or (self.gm==12)) then
			self.txtx = GetText(710).." "..self.nbl
		else
			self.txtx = GetText(723).." "..self.nbl
		end
		JoueSon2DNoInst("MenuGD", 0,-1)
	end

	if PushUpSelected() == 1 then
		StopUp()
		Selected("RSO_nbcourse")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_opt2")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

end

-- Function 'End'
function RSO_opt1:End()

end

