P1luaT={}

-- Function 'Init'
function P1luaT:Init()

 	PrintDebug("Track P1 init ...")
	JoueFluxMusique("AtomicTube", 3, TRUE)
	
	InitTEAM()

end


-- Function 'Update'
function P1luaT:Update()

end


-- Function 'End'
function P1luaT:End()

end


-- Function 'Notify'
function P1luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function P1luaT:Clock(Id)

	EndRaceClockTEAM(Id)

end

