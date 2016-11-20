C1luaT={}

-- Function 'Init'
function C1luaT:Init()

	InitTEAM()

	JoueFluxMusique("L7-NetEvilMind", 3, TRUE)
  	PrintDebug("Track C1 Update...")
end


-- Function 'Update'
function C1luaT:Update()

end


-- Function 'End'
function C1luaT:End()

end


-- Function 'Notify'
function C1luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C1luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
