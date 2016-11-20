BoxTriggerJump01={}



function BoxTriggerJump01:Init()

	JumpCreateEvent( "BoxTriggerJump01", "BoxTriggerJump01", 1, 0, 0, 0, 0, 0, 1)
	JumpSetRestartTrigger("BoxTriggerJump01" , "RestartPodTrigger01" )
	JumpSetRestartTriggerIA( "BoxTriggerJump01", "RestartIaTrigger01" )
	StartEvent("BoxTriggerJump01")

	if( SelectEntityInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump01" )
	end
end



function BoxTriggerJump01:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump01" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump01", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump01" )
	end

end



function BoxTriggerJump01:End()

	DeleteEvent("BoxTriggerJump01")

end
