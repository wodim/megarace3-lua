BoxTriggerJump02={}



function BoxTriggerJump02:Init()

	JumpCreateEvent( "BoxTriggerJump02", "BoxTriggerJump02", 1, 0, 0, 0, 0, 0, 1)
	JumpSetRestartTrigger("BoxTriggerJump02" , "RestartIaTrigger02" )
	JumpSetRestartTriggerIA( "BoxTriggerJump02", "RestartIaTrigger02" )
	StartEvent("BoxTriggerJump02")
end



function BoxTriggerJump02:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		InsertSelectedIntoJump( "BoxTriggerJump02" )
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump02", "ALL_PODS", "" ) == 1 ) then
		RemoveSelectedFromJump( "BoxTriggerJump02" )
	end

end



function BoxTriggerJump02:End()

	DeleteEvent("BoxTriggerJump02")

end
