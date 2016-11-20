BoxTriggerJump03={}



function BoxTriggerJump03:Init()

	JumpCreateEvent( "BoxTriggerJump03", "BoxTriggerJump03", 1, 0, 0, 0, 0, 0, 1)
	JumpSetRestartTrigger("BoxTriggerJump03" , "RestartPodTrigger03" )
	JumpSetRestartTriggerIA( "BoxTriggerJump03", "RestartIaTrigger03" );
	StartEvent("BoxTriggerJump03")
end



function BoxTriggerJump03:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump03" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump03", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump03" )
	end

end



function BoxTriggerJump03:End()

	DeleteEvent("BoxTriggerJump03")

end
