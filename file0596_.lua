RSO_Fond={}

-- Function 'Init'
function RSO_Fond:Init()

	ChangeTexture("CURRENT","Fond","interfacereseau")
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	JoueSon2DNoInst("MenuAPP",0,-1)

	LoadEntityAnim("RSO_ANI_Fond","logo")
	StartEntityAnim("RSO_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("RSO_TXT_GRDTITRE")
	HideInterfaceEntity("RSO_TXT_PETTITRE")
	HideInterfaceEntity("RSO_BT_NOMJOUEUR")



	HideInterfaceEntity("RSO_TXT_LOGOM3")
	HideInterfaceEntity("RSO_TXT_INFODIVERSE")

	HideInterfaceEntity("RSO_nomsession")
	HideInterfaceEntity("RSO_nombredejoueur")
	HideInterfaceEntity("RSO_mode")
	HideInterfaceEntity("RSO_type")
	HideInterfaceEntity("RSO_opt1")
	HideInterfaceEntity("RSO_opt2")
	HideInterfaceEntity("RSO_opt03")
	HideInterfaceEntity("RSO_opt04")

	HideInterfaceEntity("RSO_nbcourse01")
	HideInterfaceEntity("RSO_nbcourse")
	HideInterfaceEntity("RSO_password")
	HideInterfaceEntity("RSO_Create")

	HideInterfaceEntity("RSO_bttablo01")
	HideInterfaceEntity("RSO_bttablo02")
	HideInterfaceEntity("RSO_bttablo03")
	HideInterfaceEntity("RSO_bttablo04")
	HideInterfaceEntity("RSO_bttablo05")


	Selected("RSO_nomsession")

end

-- Function 'Update'
function RSO_Fond:Update()


	if PushTab() == 1 then
		StopTab()
		local c = GetSelectedEntity()
		if c == "RSO_bttablo01" or c == "RSO_bttablo02" or c == "RSO_bttablo03" or c == "RSO_bttablo04" or c == "RSO_bttablo05" then
			Selected("RSO_Create")
		else
			Selected("RSO_bttablo01")
		end
	end

	if PushEsc()==1 then
		StopEsc()
		Selected("RSO_BT_BACK")
		terminateNetwork()
		LoadInterface("Menu_Multi")
	end
	
end


-- Function 'End'
function RSO_Fond:End()

end

