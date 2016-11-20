t_ca04={oki}

function t_ca04:Init()
	self.oki = 0
	
	--SetOptimTestTrigger("CURRENT", FALSE)
end

function t_ca04:Update()
	if self.oki == 0 then
		if IsEntityInTrigger( "Nano","CURRENT") == 1 then
			PrintDebug("Start Cercle 4")
			RotativeObjectSetForceValue( "CercleRotate", "o3d_ca04", AAG_VELOCITY )
			self.oki = 1
		end
	end
end

function t_ca04:End()
end
