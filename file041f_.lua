F3luaF={}

-- Function 'Init'
function F3luaF:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)

	InitFLAG(5)

	JoueFluxMusique("L4-RetoucheRat", 3, TRUE)
  	PrintDebug("Track F1 Update...")
end


-- Function 'Update'
function F3luaF:Update()

	UpdateFLAG()
	
end


-- Function 'End'
function F3luaF:End()

end


-- Function 'Notify'
function F3luaF:Notify(event,param)

	NotifyFLAG(event, param)

end


-- Function 'Clock'
function F3luaF:Clock(Id)

	EndRaceClockFLAG(Id)

end
