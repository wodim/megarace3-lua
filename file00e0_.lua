A1luaT={}

-- Function 'Init'
function A1luaT:Init()

	InitTEAM()

	JoueFluxMusique("L4-Rat", 3, TRUE)
  	PrintDebug("Track A1 Update...")
end


-- Function 'Update'
function A1luaT:Update()

end


-- Function 'End'
function A1luaT:End()

end


-- Function 'Notify'
function A1luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function A1luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
