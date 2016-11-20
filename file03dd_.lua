C6luaT={}

-- Function 'Init'
function C6luaT:Init()

	InitTEAM()

	JoueFluxMusique("AtomicTube", 3, TRUE)
  	PrintDebug("Track C6 Update...")
end


-- Function 'Update'
function C6luaT:Update()

end


-- Function 'End'
function C6luaT:End()

end


-- Function 'Notify'
function C6luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C6luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
