C5luaT={}

-- Function 'Init'
function C5luaT:Init()

	InitTEAM()

	JoueFluxMusique("L8-Sci-Fi City", 3, TRUE)
  	PrintDebug("Track C5 Update...")
end


-- Function 'Update'
function C5luaT:Update()

end


-- Function 'End'
function C5luaT:End()

end


-- Function 'Notify'
function C5luaT:Notify(event,param)

	NotifyTEAM(event, param)

end


-- Function 'Clock'
function C5luaT:Clock(Id)
	
	EndRaceClockTEAM(Id)
	
end
