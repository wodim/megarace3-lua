C4luaS={}

-- Function 'Init'
function C4luaS:Init()

	InitSOLO()

	JoueFluxMusique("L5-Particule", 3, TRUE)
  	PrintDebug("Track C4 Update...")
end


-- Function 'Update'
function C4luaS:Update()

end


-- Function 'End'
function C4luaS:End()

end


-- Function 'Notify'
function C4luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C4luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end
