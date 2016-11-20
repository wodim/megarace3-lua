P1luaP={}

-- Function 'Init'
function P1luaP:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)

	InitPREY(5)

	JoueFluxMusique("AtomicTube", 3, TRUE)
end


-- Function 'Update'
function P1luaP:Update()

	UpdatePREY()

end


-- Function 'End'
function P1luaP:End()

end


-- Function 'Notify'
function P1luaP:Notify(event,param)

	NotifyPREY(event, param)

end


-- Function 'Clock'
function P1luaP:Clock(Id)
	
	EndRaceClockPREY(Id)

end
