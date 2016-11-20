C5luaS={}

-- Function 'Init'
function C5luaS:Init()

	InitSOLO()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
  	PrintDebug("Track C5 Update...")
end


-- Function 'Update'
function C5luaS:Update()

end


-- Function 'End'
function C5luaS:End()

end


-- Function 'Notify'
function C5luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C5luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end
