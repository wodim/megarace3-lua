C3luaT={}

-- Function 'Init'
function C3luaT:Init()

	InitTEAM()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
  	PrintDebug("Track C3 Update...")
end


-- Function 'Update'
function C3luaT:Update()

end


-- Function 'End'
function C3luaT:End()

end


-- Function 'Notify'
function C3luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C3luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
