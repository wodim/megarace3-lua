F1luaP={}

-- Function 'Init'
function F1luaP:Init()

	SetDrawRank(FALSE)
	SetDrawLap(FALSE)
	SetDrawProgBar(FALSE)

	InitPREY(5)

	JoueFluxMusique("L4-RetoucheRat", 3, TRUE)
  	PrintDebug("Track F1 Update...")
end


-- Function 'Update'
function F1luaP:Update()

	UpdatePREY()

end


-- Function 'End'
function F1luaP:End()

end


-- Function 'Notify'
function F1luaP:Notify(event,param)

	NotifyPREY(event, param)

end


-- Function 'Clock'
function F1luaP:Clock(Id)
	
	EndRaceClockPREY(Id)

end
