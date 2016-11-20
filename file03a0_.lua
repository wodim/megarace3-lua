C2luaT={}

-- Function 'Init'
function C2luaT:Init()

	InitTEAM()

	JoueFluxMusique("L7-NetEvilMind", 3, TRUE)
  	PrintDebug("Track C2 Update...")
end


-- Function 'Update'
function C2luaT:Update()

end


-- Function 'End'
function C2luaT:End()

end


-- Function 'Notify'
function C2luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C2luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)

end
