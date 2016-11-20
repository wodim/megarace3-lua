RSO_TXT_INFODIVERSE={aff,txt}

-- Function 'Init'
function RSO_TXT_INFODIVERSE:Init()
	self.txt = 736
	self.aff = 1
end

-- Function 'Update'
function RSO_TXT_INFODIVERSE:Update()

	if self.aff == 1 then
		PrintTextOn("CURRENT", self.txt, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

end

-- Function 'End'
function RSO_TXT_INFODIVERSE:End()

end

function RSO_TXT_INFODIVERSE:Clock(Id)

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
