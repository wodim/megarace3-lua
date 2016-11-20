C6luaS={}

-- Function 'Init'
function C6luaS:Init()

	InitSOLO()

	JoueFluxMusique("AtomicTube", 3, TRUE)
  	PrintDebug("Track C6 Update...")
end


-- Function 'Update'
function C6luaS:Update()

end


-- Function 'End'
function C6luaS:End()

end


-- Function 'Notify'
function C6luaS:Notify(event,param)

	NotifySOLO(event, param)

end


-- Function 'Clock'
function C6luaS:Clock(Id)
	
	EndRaceClockSOLO(Id)
	
end
