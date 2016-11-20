PW_FOND={}

PW_TIME_DELAY_FLASHING = 400
PW_MAX_CHAR = 20

pwClock = clone(LUACLOCK)
pwFlashing = FALSE
pwDraw = TRUE


-- Function 'Init'
function PW_FOND:Init()

	HideInterfaceEntity("PW_TITLE_01")
	HideInterfaceEntity("PW_TITLE_02")
	HideInterfaceEntity("PW_PROMPT")

	local v = GetValuePopup()

	if v==1000000 then
		PwdNet = ""
		pwClock.Start(pwClock)
		pwFlashing = TRUE
		StartTextGrab(PW_MAX_CHAR)
	end

end

-- Function 'Update'
function PW_FOND:Update()
	PwdNet = GetGrabbedText()
end

-- Function 'End'
function PW_FOND:End()
end

-- Function 'Notify'
function PW_FOND:Notify(Event)

	if Event==TI_GRAB_END then
		pwFlashing = FALSE

		if IsGrabbedTextCanceled()==0 then
			StopEnter()
			PwdNet = GetGrabbedText()
			ExitPopup(POPUP_YES)
		else
			StopEsc()
			ExitPopup(POPUP_NO)
		end
	end

end
