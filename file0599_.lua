RSO_nombre={nbj,txt}

-- Function 'Init'
function RSO_nombre:Init()
	self.nbj = 4
	HideInterfaceEntity("RSO_nombre")
	self.txt = GetText(84).." : "..self.nbj
end

-- Function 'Update'
function RSO_nombre:Update()

	if IsSelected()==1 then
		PrintStringOn("CURRENT", self.txt, S_FONTE, S_MUMF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
--		PrintTextOn("RSO_nombredejoueur", 84, S_FONTE, S_MUMF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintStringOn("CURRENT", self.txt, S_FONTE, S_MUMF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		if self.nbj > 2 then self.nbj = self.nbj  - 1 end
		self.txt = GetText(84).." : "..self.nbj
		JoueSon2DNoInst("MenuGD", 0,-1)
	end

	if PushRightSelected() == 1 then
		StopRight()
		if self.nbj < 8 then self.nbj = self.nbj  + 1 end
		self.txt = GetText(84).." : "..self.nbj
		JoueSon2DNoInst("MenuGD", 0,-1)
	end

	if PushUpSelected() == 1 then
		StopUp()
		Selected("RSO_opt03")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("RSO_mode")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end


end

-- Function 'End'
function RSO_nombre:End()

end

