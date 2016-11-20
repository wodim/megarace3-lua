t_ca01={oki}

function t_ca01:Init()
	self.oki = 0
	
	--SetOptimTestTrigger("CURRENT", FALSE)
end

function t_ca01:Update()
	if self.oki == 0 then
		if IsEntityInTrigger( "Nano","CURRENT") == 1 then
			PrintDebug("Start Cercle 1")
			RotativeObjectSetForceValue( "CercleRotate", "o3d_ca01", AAG_VELOCITY )
			self.oki = 1
		end
	end
end

function t_ca01:End()
end
