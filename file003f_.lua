A4luaT={}

-- Function 'Init'
function A4luaT:Init()

	InitTEAM()

	JoueFluxMusique("TOyLand", 3, TRUE)
	
end


-- Function 'Update'
function A4luaT:Update()

end


-- Function 'End'
function A4luaT:End()

end


-- Function 'Notify'
function A4luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A4luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)

end

