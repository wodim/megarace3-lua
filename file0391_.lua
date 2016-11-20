C1luaS={}

-- Function 'Init'
function C1luaS:Init()

	InitSOLO()

	JoueFluxMusique("L7-NetEvilMind", 3, TRUE)
  	PrintDebug("Track C1 Update...")
end


-- Function 'Update'
function C1luaS:Update()

end


-- Function 'End'
function C1luaS:End()

end


-- Function 'Notify'
function C1luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C1luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end
