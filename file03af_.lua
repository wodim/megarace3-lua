C3luaS={}

-- Function 'Init'
function C3luaS:Init()

	InitSOLO()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
  	PrintDebug("Track C3 Update...")
end


-- Function 'Update'
function C3luaS:Update()

end


-- Function 'End'
function C3luaS:End()

end


-- Function 'Notify'
function C3luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C3luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end
