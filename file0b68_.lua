BoxTriggerJump02={pass}



function BoxTriggerJump02:Init()

	JumpCreateEvent( "BoxTriggerJump02", "BoxTriggerJump02", 1, 0, 0, 0, 0, 0, 1)
	JumpSetRestartTrigger("BoxTriggerJump02" , "RestartPodTrigger02" )
	JumpSetRestartTriggerIA( "BoxTriggerJump02", "RestartIaTrigger02" )
	StartEvent("BoxTriggerJump02")
	self.pass = 0
end



function BoxTriggerJump02:Update()

	if( SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1 ) then
		self.pass = self.pass + 1
--		if self.pass > 3 then StartClock("BoxTriggerJump02",2,1) end
		StopChrono("Player1")
		clockL2.Pause(clockL2)
		InsertSelectedIntoJump( "BoxTriggerJump02" )
		
		StartQueen()
	end

	if( SelectEntityLeaveTrigger( "BoxTriggerJump02", "ALL_PODS", "" ) == 1 ) then
--		if self.pass == 1 then self.pass = 2 end
		RemoveSelectedFromJump( "BoxTriggerJump02" )
	end

end



function BoxTriggerJump02:End()

	DeleteEvent("BoxTriggerJump02")

end

function BoxTriggerJump02:Clock(Id)
	
	if Id == 0 then
		if self.pass == 0 then
			EndL2Race(FALSE)
		end
	else
		EndL2Race(TRUE)
	end

end