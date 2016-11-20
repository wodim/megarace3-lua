P1luaF={}

-- Function 'Init'
function P1luaF:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)

	InitFLAG(5)

	JoueFluxMusique("AtomicTube", 3, TRUE)
end


-- Function 'Update'
function P1luaF:Update()

	UpdateFLAG()
	
end


-- Function 'End'
function P1luaF:End()

end


-- Function 'Notify'
function P1luaF:Notify(event,param)

	NotifyFLAG(event, param)

end


-- Function 'Clock'
function P1luaF:Clock(Id)

	EndRaceClockFLAG(Id)

end
