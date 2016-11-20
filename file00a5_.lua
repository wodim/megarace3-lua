A5luaS={}

-- Function 'Init'
function A5luaS:Init()

	InitSOLO()

	JoueFluxMusique("L2-Earthquake", 3, TRUE)
	
	LoadEntityAnim("father_queen","queen_a5")
	
end


-- Function 'Update'
function A5luaS:Update()

end


-- Function 'End'
function A5luaS:End()

end


-- Function 'Notify'
function A5luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A5luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
end

