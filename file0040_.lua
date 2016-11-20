A4luaS={}

-- Function 'Init'
function A4luaS:Init()

	InitSOLO()

	JoueFluxMusique("TOyLand", 3, TRUE)
	
end


-- Function 'Update'
function A4luaS:Update()

end


-- Function 'End'
function A4luaS:End()

end


-- Function 'Notify'
function A4luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A4luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)

end

