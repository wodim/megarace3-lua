A7luaT={}

-- Function 'Init'
function A7luaT:Init()

	InitTEAM()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
	
end


-- Function 'Update'
function A7luaT:Update()

end


-- Function 'End'
function A7luaT:End()
	
end


-- Function 'Notify'
function A7luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A7luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)

end

