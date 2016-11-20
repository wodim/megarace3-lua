C7luaS={}

-- Function 'Init'
function C7luaS:Init()

	InitSOLO()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
  	PrintDebug("Track C7 Update...")
end


-- Function 'Update'
function C7luaS:Update()

end


-- Function 'End'
function C7luaS:End()

end


-- Function 'Notify'
function C7luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C7luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end
