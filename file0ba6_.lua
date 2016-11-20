t_queen2={validated, next, already_in, first_hit}


function t_queen2:Init()

	self.validated = TRUE
	self.next = "t_queen3"
	self.already_in = FALSE
	self.first_hit =  TRUE
	
	SetOptimTestTrigger("CURRENT", FALSE)

end

function t_queen2:Update()

	if self.validated == TRUE and IsEntityEnterInTrigger("Player1", "CURRENT") == TRUE then
	
		--PrintDebug("EnterPod")
		
		self.validated = FALSE
		GetLuaObject(self.next).validated = TRUE
		
		PauseQueen(FALSE)
		
		if self.first_hit == TRUE then			
			DisplayMsgCata(264)
			self.first_hit = FALSE
		end	
		
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

function t_queen2:End()

end

function t_queen2:Notify(event)

end