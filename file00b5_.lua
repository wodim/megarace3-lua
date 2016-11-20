A3luaT={}

-- Function 'Init'
function A3luaT:Init()

	InitTEAM()

	JoueFluxMusique("L5-Particule", 3, TRUE)
end


-- Function 'Update'
function A3luaT:Update()

end


-- Function 'End'
function A3luaT:End()

end


-- Function 'Notify'
function A3luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A3luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
end

