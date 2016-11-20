F1luaF={}

-- Function 'Init'
function F1luaF:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)

	InitFLAG(5)

	JoueFluxMusique("L4-RetoucheRat", 3, TRUE)
  	PrintDebug("Track F1 Update...")
end


-- Function 'Update'
function F1luaF:Update()

	UpdateFLAG()
	
end


-- Function 'End'
function F1luaF:End()

end


-- Function 'Notify'
function F1luaF:Notify(event,param)

	NotifyFLAG(event, param)

end


-- Function 'Clock'
function F1luaF:Clock(Id)

	EndRaceClockFLAG(Id)

end
