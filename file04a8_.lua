FIN_TXT_INFODIVERSE={aff,txt}

-- Function 'Init'
function FIN_TXT_INFODIVERSE:Init()

end

-- Function 'Update'
function FIN_TXT_INFODIVERSE:Update()

	if self.aff == 1 then
		PrintStringOn("CURRENT", self.txt, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	end

end

-- Function 'End'
function FIN_TXT_INFODIVERSE:End()

end

function FIN_TXT_INFODIVERSE:Clock(Id)
	
	if Id == 0 then
		self.aff = 1
		self.txt = GetText(419).."\n"..GetText(417)
		StartClock("CURRENT",1.5,1)
	end

	if Id == 1 then
		self.aff = 0
		StartClock("CURRENT",0.5,0)
	end

	if Id == 2 then
		self.aff = 1
		self.txt = GetText(417)
		StartClock("CURRENT",1.5,3)
	end

	if Id == 3 then
		self.aff = 0
		StartClock("CURRENT",0.5,2)
	end


	if Id == 4 then
		self.aff = 1
		self.txt = GetText(418)
		StartClock("CURRENT",1.5,5)
	end

	if Id == 5 then
		self.aff = 0
		StartClock("CURRENT",0.5,4)
	end

	if Id == 6 then
		self.aff = 1
		self.txt = GetText(178)
		StartClock("CURRENT",1.5,7)
	end

	if Id == 7 then
		self.aff = 0
		StartClock("CURRENT",0.5,6)
	end

	if Id == 8 then
		self.aff = 1
		self.txt = GetText(418).."\n"..GetText(417)
		StartClock("CURRENT",1.5,9)
	end

	if Id == 9 then
		self.aff = 0
		StartClock("CURRENT",0.5,8)
	end

	if Id == 10 then
		self.aff = 1
		self.txt = GetText(417)
		StartClock("CURRENT",1.5,11)
	end

	if Id == 11 then
		self.aff = 0
		StartClock("CURRENT",0.5,10)
	end

end
