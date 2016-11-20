CAT_Fond={balade}
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

-- Function 'Init'
function CAT_Fond:Init()

	JoueSon2DNoInst("MenuAPP", 0,-1)
	OldTrckname = ""
	LoadEntityAnim("CAT_ANI_Fond","logo")
	StartEntityAnim("CAT_ANI_Fond","logo",1,-1,1)
	ChangeTexture("CURRENT","Fond","interfaceok")

	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	HideInterfaceEntity("cat_ani_gc")
	HideInterfaceEntity("cat_ani_vul")
	HideInterfaceEntity("cat_ani_wo")
	HideInterfaceEntity("cat_ani_sa")
	HideInterfaceEntity("cat_ani_sap")
	HideInterfaceEntity("cat_ani_tn")
	HideInterfaceEntity("cat_ani_rb")

	LoadEntityAnim("cat_ani_gc","gc_inter")
	LoadEntityAnim("cat_ani_vul","vul_inter")
	LoadEntityAnim("cat_ani_wo","wo_inter")
	LoadEntityAnim("cat_ani_sa","sa_inter")
	LoadEntityAnim("cat_ani_sap","sap_inter")
	LoadEntityAnim("cat_ani_tn","tn_inter")
	LoadEntityAnim("cat_ani_rb","rb_inter")

	HideInterfaceEntity("CAT_TXT_GRDTITRE")
	HideInterfaceEntity("CAT_TXT_PETTITRE")
	HideInterfaceEntity("CAT_TXT_NOMJOUEUR")

	HideInterfaceEntity("CAT_BT_SELECT")

	HideInterfaceEntity("CAT_BT_BACK")

	HideInterfaceEntity("CAT_BT_CHOIXACTIF01")
	HideInterfaceEntity("CAT_BT_CHOIXACTIF02")

	HideInterfaceEntity("CAT_TXT_GDTITRE")
	HideInterfaceEntity("CAT_TXT_NOM_INFO")
	HideInterfaceEntity("CAT_TXT_ECRANINFO")
	HideInterfaceEntity("CAT_TXT_INFODIVERSE")
--	HideInterfaceEntity("CAT_TXT_INFOTRACK")
	HideInterfaceEntity("CAT_INFO")
	HideInterfaceEntity("CAT_TXT_CIRCUIT09")
	HideInterfaceEntity("CAT_TXT_CIRCUIT10")
	HideInterfaceEntity("CAT_TXT_CIRCUIT11")
	HideInterfaceEntity("CAT_TXT_CIRCUIT12")

	HideInterfaceEntity("CAT_TXT_LOGOM3")
--	HideInterfaceEntity("CAT_BT_ECRANTV")
	HideInterfaceEntity("CAT_BT_ECRANTV01")

	local v1 = GetGameMode()
	local v2 = GetTrackState(v1)
	if v2 < 7 then
		HideInterfaceEntity("CAT_FlecheG")
		HideInterfaceEntity("CAT_FlecheD")
		self.balade = 0
		if GetGlobalVariable("NTrackCata") < 0 then
			SetGlobalVariable("NTrackCata", GetTrackState(MODE_CATASTROPHE)-1) 	
		end
	else
		self.balade = 1
	end

	if GetGlobalVariable("NTrackCata") > 0 then
		while GetGlobalVariable("NTrackCata") ~= GetUsedTrackIndex() do
			NextTrack()
		end
		SetGlobalVariable("NTrackCata", -1) 
	end

	

	Selected("CAT_BT_CHOIXACTIF01")
end

-- Function 'Update'
function CAT_Fond:Update()
	

	if PushEsc()==1 then
		StopEsc()
		Selected("CAT_BT_BACK")
		LoadInterface("Menu_Principal")
	end

end

-- Function 'End'
function CAT_Fond:End()

end
