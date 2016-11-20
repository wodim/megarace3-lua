t_ca03={oki}

function t_ca03:Init()
	self.oki = 0
	
	--SetOptimTestTrigger("CURRENT", FALSE)
end

function t_ca03:Update()
	if self.oki == 0 then
		if IsEntityInTrigger( "Nano","CURRENT") == 1 then
			PrintDebug("Start Cercle 3")
			RotativeObjectSetForceValue( "CercleRotate", "o3d_ca03", AAG_VELOCITY )
			self.oki = 1
		end
	end
end

function t_ca03:End()
end
