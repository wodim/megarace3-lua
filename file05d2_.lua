CMU_PROMPT_CHAT={}

-- Function 'Init'
function CMU_PROMPT_CHAT:Init()
end

-- Function 'Update'
function CMU_PROMPT_CHAT:Update()

	if cmuFlashing==TRUE then
		local time = cmuClock.Time(cmuClock)
		if time>CMU_TIME_DELAY_FLASHING then
			cmuClock.Start(cmuClock)
			if cmuDraw==FALSE then
				cmuDraw = TRUE
			else
				cmuDraw = FALSE
			end
		end
	else
		cmuDraw = TRUE
	end

	if cmuDraw==TRUE then
		PrintStringOn("CURRENT", ">", S_FONTE, S_CHAT_F, "LEFT", S_CHAT_C2.r1, S_CHAT_C2.v1, S_CHAT_C2.b1, S_CHAT_C2.a1, S_CHAT_C2.r2, S_CHAT_C2.v2, S_CHAT_C2.b2, S_CHAT_C2.a2)
	end

end

-- Function 'End'
function CMU_PROMPT_CHAT:End()
end
