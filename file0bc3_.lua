t_vagues={oki}

function t_vagues:Init()

	self.oki =0
end

function t_vagues:Update()

	if self.oki == 0 and IsEntityEnterInTrigger("Nano", "CURRENT" ) == 1 then
		self.oki = 1
	end

	if (IsEntityEnterInTrigger("Player1", "CURRENT" ) == 1 ) then
		
		StopEvent("Cerclelec")
		 
		StoppeSon("VagueELE", "o3d_vague")
		StoppeSon("VagueELE", "o3d_vague01")
		StoppeSon("VagueELE", "o3d_vague02")
		StoppeSon("VagueELE", "o3d_vague03")
		StoppeSon("VagueELE", "o3d_vague04")
	end

end

function t_vagues:End()


end
