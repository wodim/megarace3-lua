A6luaS={}

-- Function 'Init'
function A6luaS:Init()

	InitSOLO()

 	JoueFluxMusique("L7-NetEvilMind", 3, TRUE)

end


-- Function 'Update'
function A6luaS:Update()

end


-- Function 'End'
function A6luaS:End()

end


-- Function 'Notify'
function A6luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A6luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)

end

