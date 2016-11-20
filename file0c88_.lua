BoxTriggerJump07={}



function BoxTriggerJump07:Init()

	JumpCreateEvent( "BoxTriggerJump07", "BoxTriggerJump07", 1, 0, 0, 0, 0, 0, 0)
	JumpSetRestartTrigger("BoxTriggerJump07" , "RestartPodTrigger07" )
	JumpSetRestartTriggerIA( "BoxTriggerJump07", "RestartIaTrigger07" )
	StartEvent("BoxTriggerJump07")
end



function BoxTriggerJump07:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump07" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump07", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump07" )
	end

end



function BoxTriggerJump07:End()

	DeleteEvent("BoxTriggerJump07")

end
