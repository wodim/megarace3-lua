F2luaP={}

-- Function 'Init'
function F2luaP:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)

	InitPREY(5)

	JoueFluxMusique("L4-RetoucheRat", 3, TRUE)
  	PrintDebug("Track F1 Update...")
end


-- Function 'Update'
function F2luaP:Update()

	UpdatePREY()
	
end


-- Function 'End'
function F2luaP:End()

end


-- Function 'Notify'
function F2luaP:Notify(event,param)

	NotifyPREY(event, param)

end


-- Function 'Clock'
function F2luaP:Clock(Id)
	
	EndRaceClockPREY(Id)

end
