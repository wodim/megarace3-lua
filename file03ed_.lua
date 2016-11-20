C7luaT={}

-- Function 'Init'
function C7luaT:Init()

	InitTEAM()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
  	PrintDebug("Track C7 Update...")
end


-- Function 'Update'
function C7luaT:Update()

end


-- Function 'End'
function C7luaT:End()

end


-- Function 'Notify'
function C7luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C7luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
