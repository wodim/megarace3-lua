RSO_nbcourse={nbc,txtx}

-- Function 'Init'
function RSO_nbcourse:Init()
	self.nbc = 1
	self.txtx = GetText(98).." "..self.nbc

end

-- Function 'Update'
function RSO_nbcourse:Update()

	if IsSelected()==1 then
--		PrintTextOn("CURRENT", 98, S_FONTE, S_MUMF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintStringOn("CURRENT", self.txtx, S_FONTE, S_MUMF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
--		PrintTextOn("CURRENT", 98, S_FONTE, S_MUMF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintStringOn("CURRENT", self.txtx, S_FONTE, S_MUMF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		if self.nbc > 1 then self.nbc = self.nbc  - 1 end
		self.txtx = GetText(98).." "..self.nbc
		JoueSon2DNoInst("MenuGD", 0,-1)
	end

	if PushRightSelected() == 1 then
		StopRight()
		if self.nbc < 5 then self.nbc = self.nbc  + 1 end
		self.txtx = GetText(98).." "..self.nbc
		JoueSon2DNoInst("MenuGD", 0,-1)
	end

	if PushUpSelected() == 1 then
		StopUp()
		Selected("RSO_type")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_opt1")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

end

-- Function 'End'
function RSO_nbcourse:End()

end

