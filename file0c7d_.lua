BoxTriggerJump09={}



function BoxTriggerJump09:Init()

	JumpCreateEvent( "BoxTriggerJump09", "BoxTriggerJump09", 1, 0, 0, 0, 0, 0, 0)
	JumpSetRestartTrigger("BoxTriggerJump09" , "RestartPodTrigger09" )
	JumpSetRestartTriggerIA( "BoxTriggerJump09", "RestartIaTrigger09" )
	StartEvent("BoxTriggerJump09")
end



function BoxTriggerJump09:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump09" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump09", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump09" )
	end

end



function BoxTriggerJump09:End()

	DeleteEvent("BoxTriggerJump09")

end
