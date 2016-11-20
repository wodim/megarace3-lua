CAR_TXT_INFODIVERSE={aff,txt}

-- Function 'Init'
function CAR_TXT_INFODIVERSE:Init()

end

-- Function 'Update'
function CAR_TXT_INFODIVERSE:Update()

	if self.aff == 1 then
		PrintTextOn("CURRENT", self.txt, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	end

end

-- Function 'End'
function CAR_TXT_INFODIVERSE:End()

end

function CAR_TXT_INFODIVERSE:Clock(Id)

	if Id == 0 then
		self.aff = 1
		self.txt = 422
		StartClock("CURRENT",1.5,1)

	end

	if Id == 1 then
		self.aff = 0
		StartClock("CURRENT",0.5,0)
	end
end
