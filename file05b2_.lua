PW_PROMPT={}

-- Function 'Init'
function PW_PROMPT:Init()
end

-- Function 'Update'
function PW_PROMPT:Update()

	if pwFlashing==TRUE then
		local time = pwClock.Time(pwClock)
		if time>PW_TIME_DELAY_FLASHING then
			pwClock.Start(pwClock)
			if pwDraw==FALSE then
				pwDraw = TRUE
			else
				pwDraw = FALSE
			end
		end
	else
		pwDraw = TRUE
	end

	if pwDraw==TRUE then
		PrintStringOn("CURRENT", ">", S_FONTE, S_PSW_F2, "LEFT", S_PSW_C2.r1, S_PSW_C2.v1, S_PSW_C2.b1, S_PSW_C2.a1, S_PSW_C2.r2, S_PSW_C2.v2, S_PSW_C2.b2, S_PSW_C2.a2)
	end

end

-- Function 'End'
function PW_PROMPT:End()
end
