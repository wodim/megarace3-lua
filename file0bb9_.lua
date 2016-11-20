t_ca02={oki}

function t_ca02:Init()
	self.oki = 0
	
	--SetOptimTestTrigger("CURRENT", FALSE)
end

function t_ca02:Update()
	if self.oki == 0 then
		if IsEntityInTrigger( "Nano","CURRENT") == 1 then
			PrintDebug("Start Cercle 2")
			RotativeObjectSetForceValue( "CercleRotate", "o3d_ca02", AAG_VELOCITY )
			self.oki = 1
		end
	end
end

function t_ca02:End()
end

