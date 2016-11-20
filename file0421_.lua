F3luaP={}

-- Function 'Init'
function F3luaP:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)

	InitPREY(5)

	JoueFluxMusique("L4-RetoucheRat", 3, TRUE)
  	PrintDebug("Track F1 Update...")
end


-- Function 'Update'
function F3luaP:Update()

	UpdatePREY()
	
end


-- Function 'End'
function F3luaP:End()

end


-- Function 'Notify'
function F3luaP:Notify(event,param)

	NotifyPREY(event, param)

end


-- Function 'Clock'
function F3luaP:Clock(Id)
	
	EndRaceClockPREY(Id)

end
