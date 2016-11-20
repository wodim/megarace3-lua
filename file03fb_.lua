P1luaS={}

-- Function 'Init'
function P1luaS:Init()

 	PrintDebug("Track P1 init ...")
	JoueFluxMusique("AtomicTube", 3, TRUE)
	
	InitSOLO()

end


-- Function 'Update'
function P1luaS:Update()

end


-- Function 'End'
function P1luaS:End()

end


-- Function 'Notify'
function P1luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function P1luaS:Clock(Id)

	EndRaceClockSOLO(Id)

end

