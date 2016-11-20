C2luaS={}

-- Function 'Init'
function C2luaS:Init()

	InitSOLO()

	JoueFluxMusique("L7-NetEvilMind", 3, TRUE)
  	PrintDebug("Track C2 Update...")
end


-- Function 'Update'
function C2luaS:Update()

end


-- Function 'End'
function C2luaS:End()

end


-- Function 'Notify'
function C2luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C2luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)

end
