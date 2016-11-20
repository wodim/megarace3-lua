CRDT_Fond={nupage}

-- ************************************************************************************
-- Function 'Init'
-- ************************************************************************************
function CRDT_Fond:Init()

	ChangeTexture("CURRENT","Fond","Credits1")

	JoueFluxMusique("InterfaceMenu", 0, TRUE)

	JoueSon2DNoInst("MenuAPP", 0, -1)

	LoadEntityAnim("CRDT_ANI_Fond", "logo")
	StartEntityAnim("CRDT_ANI_Fond", "logo", 1, -1, 1)
	self.nupage = 1
end

-- ************************************************************************************
-- Function 'Update'
-- ************************************************************************************
function CRDT_Fond:Update()

	if PushEnter() == 1 then
		StopEnter()
		if self.nupage == 3 then
			LoadInterface("Menu_Game_Options")
		else
			self.nupage = self.nupage + 1
			ChangeTexture("CURRENT","Fond","Credits"..self.nupage)
		end
	end

end

-- ************************************************************************************
-- Function 'End'
-- ************************************************************************************
function CRDT_Fond:End()
end

