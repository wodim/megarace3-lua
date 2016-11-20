BoxTriggerJump04={}



function BoxTriggerJump04:Init()

	JumpCreateEvent( "BoxTriggerJump04", "BoxTriggerJump04", 1, 0, 0, 0, 0, 0, 0)
	JumpSetRestartTrigger("BoxTriggerJump04" , "RestartPodTrigger04" )
	JumpSetRestartTriggerIA( "BoxTriggerJump04", "RestartIaTrigger04" )
	StartEvent("BoxTriggerJump04")
end



function BoxTriggerJump04:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump04" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump04", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump04" )
	end

end



function BoxTriggerJump04:End()

	DeleteEvent("BoxTriggerJump04")

end
