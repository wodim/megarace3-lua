t_queen4={validated, next, already_in}


function t_queen4:Init()

	self.validated = FALSE
	self.next = "t_queen1"
	self.already_in = FALSE
	
	SetOptimTestTrigger("CURRENT", FALSE)

end

function t_queen4:Update()

	if self.validated == TRUE and IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
	
		--PrintDebug("EnterPod")
		
		self.validated = FALSE
		GetLuaObject(self.next).validated = TRUE
		
		PauseQueen(FALSE)
		
	end

	if IsEntityInTrigger("o3d_queen", "CURRENT") == TRUE then
	--if IsEntityIn("o3d_queen", "CURRENT") == TRUE then
	
		if self.already_in == FALSE then
		
			--PrintDebug("Enter Queen")
		
			self.already_in = TRUE		
			
			if self.validated == FALSE then
			
				PauseQueen(TRUE)
			
			end
		end
		
	else
	
		self.already_in = FALSE
		
	end

end

function t_queen4:End()

end

function t_queen4:Notify(event)

end