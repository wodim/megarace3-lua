C4luaT={}

-- Function 'Init'
function C4luaT:Init()

	InitTEAM()

	JoueFluxMusique("L5-Particule", 3, TRUE)
  	PrintDebug("Track C4 Update...")
end


-- Function 'Update'
function C4luaT:Update()

end


-- Function 'End'
function C4luaT:End()

end


-- Function 'Notify'
function C4luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C4luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
