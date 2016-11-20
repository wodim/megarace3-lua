A6luaT={}

-- Function 'Init'
function A6luaT:Init()

	InitTEAM()

 	JoueFluxMusique("L7-NetEvilMind", 3, TRUE)

end


-- Function 'Update'
function A6luaT:Update()

end


-- Function 'End'
function A6luaT:End()

end


-- Function 'Notify'
function A6luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A6luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)

end

