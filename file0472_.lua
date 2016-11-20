CMU_LINE_CHAT_02={}

-- Function 'Init'
function CMU_LINE_CHAT_02:Init()
end

-- Function 'Update'
function CMU_LINE_CHAT_02:Update()

	local line = ""
	local fromMe = FALSE
	if GetChatLineAt(cmuL1 + 1)~=nil then
		line = line..GetChatLineAt(cmuL1 + 1)
		fromMe = IsLocalChatLine(cmuL1 + 1)
	end

	if strlen(line)>CMU_MAX_CHAR then
		line = strsub(line, 1, CMU_MAX_CHAR)
	end

	if fromMe==TRUE then
		PrintStringOn("CURRENT", line, S_FONTE, S_CHAT_F, "LEFT", S_CHAT_C0.r1, S_CHAT_C0.v1, S_CHAT_C0.b1, S_CHAT_C0.a1, S_CHAT_C0.r2, S_CHAT_C0.v2, S_CHAT_C0.b2, S_CHAT_C0.a2)
	else
		PrintStringOn("CURRENT", line, S_FONTE, S_CHAT_F, "LEFT", S_CHAT_C1.r1, S_CHAT_C1.v1, S_CHAT_C1.b1, S_CHAT_C1.a1, S_CHAT_C1.r2, S_CHAT_C1.v2, S_CHAT_C1.b2, S_CHAT_C1.a2)
	end

end

-- Function 'End'
function CMU_LINE_CHAT_02:End()
end
