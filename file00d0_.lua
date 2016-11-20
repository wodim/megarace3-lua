A2luaT={}

-- Function 'Init'
function A2luaT:Init()

	InitTEAM()

	JoueFluxMusique("AtomicTube", 3, TRUE)
end


-- Function 'Update'
function A2luaT:Update()

end


-- Function 'End'
function A2luaT:End()

end


-- Function 'Notify'
function A2luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A2luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end

