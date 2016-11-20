F2luaF={}

-- Function 'Init'
function F2luaF:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)

	InitFLAG(5)

	JoueFluxMusique("L4-RetoucheRat", 3, TRUE)
  	PrintDebug("Track F1 Update...")
end


-- Function 'Update'
function F2luaF:Update()

	UpdateFLAG()

end


-- Function 'End'
function F2luaF:End()

end


-- Function 'Notify'
function F2luaF:Notify(event,param)

	NotifyFLAG(event, param)

end


-- Function 'Clock'
function F2luaF:Clock(Id)

	EndRaceClockFLAG(Id)

end
