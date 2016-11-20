BoxTriggerJump05={}



function BoxTriggerJump05:Init()

	JumpCreateEvent( "BoxTriggerJump05", "BoxTriggerJump05", 1, 0, 0, 0, 0, 0, 0)
	JumpSetRestartTrigger("BoxTriggerJump05" , "RestartPodTrigger05" )
	JumpSetRestartTriggerIA( "BoxTriggerJump05", "RestartIaTrigger05" )
	StartEvent("BoxTriggerJump05")
end



function BoxTriggerJump05:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump05" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump05", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump05" )
	end

end



function BoxTriggerJump05:End()

	DeleteEvent("BoxTriggerJump05")

end
