check_1={passed}

-- Function 'Init'
function check_1:Init()

 	PrintDebug("check_1 ...")
 	
 	self.passed = FALSE
end

-- Function 'Update'
function check_1:Update()

	if SelectEntityEnterInTrigger("CURRENT", "ALL_PODS", "") == 1 and self.passed == FALSE then 
				
		PrintDebug("check point 1 ...")
		
		timeL6 = timeL6 + TIME_BONUS_1
  		SetLimitTime(0, 0, timeL6 - clockL6.Time(clockL6) / 1000)
		
		JoueSon2DNoInst("J_Repl02", FALSE, -1)
		
		self.passed = TRUE
		
	end
	
end

-- Function 'End'
function check_1:End()

end
