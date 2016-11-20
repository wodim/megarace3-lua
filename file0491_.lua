DRA_Fond={}

-- Function 'Init'
function DRA_Fond:Init()


	JoueSon2DNoInst("MenuAPP", 0,-1)
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

--	ChangeTexture("CURRENT","Fond","gametype")
	ChangeTexture("CURRENT","Fond","interface_optionmenu")
	LoadEntityAnim("DRA_ANI_Fond","logo")
	StartEntityAnim("DRA_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("DRA_TXT_GRDTITRE")
	HideInterfaceEntity("DRA_TXT_PETTITRE")
	HideInterfaceEntity("DRA_BT_NOMJOUEUR")

	HideInterfaceEntity("DRA_BT_SELECT")
	HideInterfaceEntity("DRA_TXT_NOM_INFO")
	HideInterfaceEntity("DRA_TXT_INFODIVERSE")


	Selected("DRA_BT_ECRANTV")




end

-- Function 'Update'
function DRA_Fond:Update()


	if PushEnter()==1 then
		StopEnter()
		Selected("DRA_BT_BACK")
		JoueSon2DNoInst("MenuVAL", 0,-1)
		LoadInterface("Menu_Options")
	end

	
end

-- Function 'End'
function DRA_Fond:End()

end


function DRA_Fond:Clock(Id)

end