PRAR_TXT_INFODIVERSE={aff}

-- Function 'Init'
function PRAR_TXT_INFODIVERSE:Init()

end


-- Function 'Update'
function PRAR_TXT_INFODIVERSE:Update()
	
	if self.aff == 1 then
		PrintTextOn("CURRENT", 419, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	end

end

function PRAR_TXT_INFODIVERSE:End()

end

function PRAR_TXT_INFODIVERSE:Clock(Id)

	if Id == 0 then
		self.aff = 1
		StartClock("CURRENT",1.5,1)

	end

	if Id == 1 then
		self.aff = 0
		StartClock("CURRENT",0.5,0)
	end
end
