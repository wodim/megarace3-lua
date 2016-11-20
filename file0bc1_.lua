t_vague={oki}

function t_vague:Init()
	self.oki = 0
	
	--SetOptimTestTrigger("CURRENT", FALSE)
end

function t_vague:Update()

	if self.oki == 0 and GetLuaObject("t_vagued").oki == 1 then
	
		if IsEntityInTrigger( "Nano","CURRENT") == 1 then
		
			StartClock("CURRENT", 0, 0)
			StartClock("CURRENT", 0.5, 1)
			StartClock("CURRENT", 0.75, 2)
			StartClock("CURRENT", 1, 3)
			StartClock("CURRENT", 1.25, 4)
			
			self.oki = 1
		end
	end

end

function t_vague:End()

end

function t_vague:Clock(id)

	if id == 0 then
		PrintDebug("Fan Elec 1 Enable")
		RotativeObjectSetForceValue("Cerclelec", "o3d_vague", 300000000000)
	elseif id == 1 then
		PrintDebug("Fan Elec 2 Enable")
		RotativeObjectSetForceValue("Cerclelec", "o3d_vague01", 300000000000)
	elseif id == 2 then
		PrintDebug("Fan Elec 3 Enable")
		RotativeObjectSetForceValue("Cerclelec", "o3d_vague02", 300000000000)
	elseif id == 3 then
		PrintDebug("Fan Elec 4 Enable")
		RotativeObjectSetForceValue("Cerclelec", "o3d_vague03", 300000000000)
	else
		PrintDebug("Fan Elec 5 Enable")
		RotativeObjectSetForceValue("Cerclelec", "o3d_vague04", 300000000000)
	end		

end

