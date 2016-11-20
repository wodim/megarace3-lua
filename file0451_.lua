cadrepopup={oldState}

-- Function 'Init'
function cadrepopup:Init()

	HideInterfaceEntity("pop_choix01")
	HideInterfaceEntity("pop_choix02")
	HideInterfaceEntity("pop_choix03")
	HideInterfaceEntity("pop_choix04")
	HideInterfaceEntity("pop_choix05")
	HideInterfaceEntity("pop_back01")
	HideInterfaceEntity("pop_select01")
	HideInterfaceEntity("pop_texte")

	local s = GetGlobalVariable("gPOPUP_state")
	self.oldState = s

	if s==POPUP_STATE_NONE then
		if GetPlatform() == PLATFORM_PS2 then
			HideInterfaceEntity("pop_back02")
			ShowInterfaceEntity("pop_select02")
		end
		Selected("pop_select01")

	elseif s==POPUP_STATE_CHOICE then
		if GetPlatform() == PLATFORM_PS2 then
			HideInterfaceEntity("pop_back02")
			ShowInterfaceEntity("pop_select02")
		end
		Selected("pop_choix01")
		if GetValuePopup() == 0 then 
			if GetTrackState(MODE_CARRIERE) < 8 then
				if GetCSFlag() == 0 then 
					if GetTrackState(MODE_CARRIERE) == 1 then
						Selected("pop_choix01")
					else
						Selected("pop_choix02")
					end
				else
					if GetTrackState(MODE_CARRIERE) == 1 then
						Selected("pop_choix01")
					else
						Selected("pop_choix03")
					end
				end
			else
				if GetCSFlag() == 0 then 
					Selected("pop_choix01")
				else
					Selected("pop_choix02")
				end

			end
		end

	elseif s==POPUP_STATE_YES_NO then
		if GetPlatform() == PLATFORM_PS2 then
			ShowInterfaceEntity("pop_back02")
			ShowInterfaceEntity("pop_select02")
		end
		Selected("pop_back01")

	-- Wait ...
	else
		if GetPlatform() == PLATFORM_PS2 then
			HideInterfaceEntity("pop_back02")
			HideInterfaceEntity("pop_select02")
		end
		Selected("pop_texte")
	end

end

-- Function 'Update'
function cadrepopup:Update()

	-- Pour que la popup se ferme sans l'intervention du joueur
	if GetGlobalVariable("gPOPUP_state")==POPUP_STATE_QUIT then
		ExitPopup(POPUP_QUIT)
	end

	-- Refresh de la selection
	local st = GetGlobalVariable("gPOPUP_state")
	if st ~= self.oldState then

		self.oldState = st

		if st==POPUP_STATE_NONE then
			if GetPlatform() == PLATFORM_PS2 then
				HideInterfaceEntity("pop_back02")
				ShowInterfaceEntity("pop_select02")
			end
			Selected("pop_select01")

		elseif st==POPUP_STATE_CHOICE then
			if GetPlatform() == PLATFORM_PS2 then
				HideInterfaceEntity("pop_back02")
				ShowInterfaceEntity("pop_select02")
			end
			Selected("pop_choix01")


		elseif st==POPUP_STATE_YES_NO then
			if GetPlatform() == PLATFORM_PS2 then
				ShowInterfaceEntity("pop_back02")
				ShowInterfaceEntity("pop_select02")
			end
			Selected("pop_back01")

		-- Wait ...
		else
			if GetPlatform() == PLATFORM_PS2 then
				HideInterfaceEntity("pop_back02")
				HideInterfaceEntity("pop_select02")
			end
			Selected("pop_texte")
		end

	end

end

-- Function 'End'
function cadrepopup:End()
end

-- Function 'Clock'
function cadrepopup:Clock(Id)
end
