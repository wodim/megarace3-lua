A2luaS={}

-- Function 'Init'
function A2luaS:Init()

	InitSOLO()

	JoueFluxMusique("AtomicTube", 3, TRUE)
end


-- Function 'Update'
function A2luaS:Update()

end


-- Function 'End'
function A2luaS:End()

end


-- Function 'Notify'
function A2luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A2luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
end

