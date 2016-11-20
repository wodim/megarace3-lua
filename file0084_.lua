A7luaS={}

-- Function 'Init'
function A7luaS:Init()

	InitSOLO()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
	
end


-- Function 'Update'
function A7luaS:Update()

end


-- Function 'End'
function A7luaS:End()
	
end


-- Function 'Notify'
function A7luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A7luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)

end

