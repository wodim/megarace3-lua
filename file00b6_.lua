A3luaS={}

-- Function 'Init'
function A3luaS:Init()

	InitSOLO()

	JoueFluxMusique("L5-Particule", 3, TRUE)
end


-- Function 'Update'
function A3luaS:Update()

end


-- Function 'End'
function A3luaS:End()

end


-- Function 'Notify'
function A3luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A3luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end

