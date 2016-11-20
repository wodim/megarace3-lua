BoxTriggerJump06={}



function BoxTriggerJump06:Init()

	JumpCreateEvent( "BoxTriggerJump06", "BoxTriggerJump06", 1, 0, 0, 0, 0, 0, 0)
	JumpSetRestartTrigger("BoxTriggerJump06" , "RestartPodTrigger06" )
	JumpSetRestartTriggerIA( "BoxTriggerJump06", "RestartIaTrigger06" )
	StartEvent("BoxTriggerJump06")
end



function BoxTriggerJump06:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump06" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump06", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump06" )
	end

end



function BoxTriggerJump06:End()

	DeleteEvent("BoxTriggerJump06")

end
