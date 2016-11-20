A1luaS={}

-- Function 'Init'
function A1luaS:Init()

	InitSOLO()

	JoueFluxMusique("L4-Rat", 3, TRUE)
  	PrintDebug("Track A1 Update...")
end


-- Function 'Update'
function A1luaS:Update()

end


-- Function 'End'
function A1luaS:End()

end


-- Function 'Notify'
function A1luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function A1luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
end
