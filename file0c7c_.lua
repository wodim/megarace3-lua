BoxTriggerJump08={}



function BoxTriggerJump08:Init()

	JumpCreateEvent( "BoxTriggerJump08", "BoxTriggerJump08", 1, 0, 0, 0, 0, 0, 0)
	JumpSetRestartTrigger("BoxTriggerJump08" , "RestartPodTrigger08" )
	JumpSetRestartTriggerIA( "BoxTriggerJump08", "RestartIaTrigger08" )
	StartEvent("BoxTriggerJump08")
end



function BoxTriggerJump08:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump08" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump08", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump08" )
	end

end



function BoxTriggerJump08:End()

	DeleteEvent("BoxTriggerJump08")

end
