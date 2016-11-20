PW_TITLE_02={}

-- Function 'Init'
function PW_TITLE_02:Init()
end

-- Function 'Update'
function PW_TITLE_02:Update()
	if PwdNet~=nil then
		PrintStringOn("CURRENT", PwdNet, S_FONTE, S_PSW_F2, "LEFT", S_PSW_C2.r1, S_PSW_C2.v1, S_PSW_C2.b1, S_PSW_C2.a1, S_PSW_C2.r2, S_PSW_C2.v2, S_PSW_C2.b2, S_PSW_C2.a2)
	end
end

-- Function 'End'
function PW_TITLE_02:End()
end
