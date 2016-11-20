A5luaT={}

-- Function 'Init'
function A5luaT:Init()

	InitTEAM()

	JoueFluxMusique("L2-Earthquake", 3, TRUE)
	
	LoadEntityAnim("father_queen","queen_a5")
end


-- Function 'Update'
function A5luaT:Update()

end


-- Function 'End'
function A5luaT:End()

end


-- Function 'Notify'
function A5luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A5luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end

