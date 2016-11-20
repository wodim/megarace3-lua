OPTJ_Fond={}

-- Function 'Init'
function OPTJ_Fond:Init()

	JoueSon2DNoInst("MenuAPP", 0,-1)
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	ChangeTexture("CURRENT","Fond","logocentrename")
	LoadEntityAnim("OPTJ_ANI_Fond","logo")
	StartEntityAnim("OPTJ_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("OPTJ_TXT_GRDTITRE")
	HideInterfaceEntity("OPTJ_TXT_PETTITRE")
	HideInterfaceEntity("OPTJ_TXT_INFODIVERSE")
	HideInterfaceEntity("OPTJ_BT_NOMJOUEUR")

	HideInterfaceEntity("OPTJ_BT_SELECT")
	HideInterfaceEntity("OPTJ_BT_BACK")

	HideInterfaceEntity("OPTJ_TXT_01")
	HideInterfaceEntity("OPTJ_TXT_02")
	HideInterfaceEntity("OPTJ_TXT_03")
	HideInterfaceEntity("OPTJ_TXT_04")
	HideInterfaceEntity("OPTJ_TXT_05")
	HideInterfaceEntity("OPTJ_TXT_06")
	HideInterfaceEntity("OPTJ_TXT_07")
	HideInterfaceEntity("OPTJ_TXT_08")
	HideInterfaceEntity("OPTJ_TXT_Credits")

	HideInterfaceEntity("OPTJ_YN_01")
	HideInterfaceEntity("OPTJ_YN_02")
	HideInterfaceEntity("OPTJ_YN_03")
	HideInterfaceEntity("OPTJ_YN_04")
	HideInterfaceEntity("OPTJ_YN_05")
	HideInterfaceEntity("OPTJ_YN_06")
	HideInterfaceEntity("OPTJ_YN_07")

	Selected("OPTJ_YN_01")

end

-- Function 'Update'
function OPTJ_Fond:Update()

	if PushEsc()==1 then
		StopEsc()
		Selected("OPTJ_BT_BACK")
		LoadInterface("Menu_Principal")
	end
	
end

-- Function 'End'
function OPTJ_Fond:End()
end


function OPTJ_Fond:Clock(Id)
end
