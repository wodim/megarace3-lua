PRA_Fond={trckname,oldp1,oldp2,textm}

-- Function 'Init'
function PRA_Fond:Init()
	
	
	JoueSon2DNoInst("MenuAPP", 0,-1)
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	LoadEntityAnim("PRA_ANI_Fond","logo")
	StartEntityAnim("PRA_ANI_Fond","logo",1,-1,1)
	ChangeTexture("CURRENT","Fond","interfaceok")

	HideInterfaceEntity("PRA_TXT_GRDTITRE")
	HideInterfaceEntity("PRA_TXT_PETTITRE")
	HideInterfaceEntity("PRA_TXT_NOMJOUEUR")

	HideInterfaceEntity("PRA_BT_SELECT")

	HideInterfaceEntity("PRA_BT_BACK")

	HideInterfaceEntity("PRA_BT_CHOIXACTIF01")
	HideInterfaceEntity("PRA_BT_CHOIXACTIF02")
	HideInterfaceEntity("PRA_BT_CHOIXACTIF03")
	HideInterfaceEntity("PRA_BT_CHOIXACTIF04")
	HideInterfaceEntity("PRA_BT_CHOIXACTIF05")

	HideInterfaceEntity("PRA_TXT_GDTITRE")
	HideInterfaceEntity("PRA_TXT_NOM_INFO")
	HideInterfaceEntity("PRA_TXT_ECRANINFO")
	HideInterfaceEntity("PRA_TXT_INFODIVERSE")


	HideInterfaceEntity("PRA_TXT_LOGOM3")
--	HideInterfaceEntity("PRA_BT_ECRANTV")
	HideInterfaceEntity("PRA_BT_ECRANTV01")
	ChangeTexture("PRA_BT_ECRANTV","ARC_BT_ECRANTV","P1")
	Selected("PRA_BT_CHOIXACTIF01")
	local na = GetText(99)
	LoadTrackInfo(na)
	self.trckname = GetTrackInfo(na, "Nom")
end

-- Function 'Update'
function PRA_Fond:Update()

	PrintStringOn("PRA_TXT_NOM_INFO" ,self.trckname, S_FONTE, S_MF,"CENTER"	, S_sel.r1 , S_sel.v1 ,S_sel.b1 ,S_sel.a1 ,S_sel.r2 ,S_sel.v2 ,S_sel.b2 ,S_sel.a2)
	
	if self.oldp1 ~= GetGlobalVariable("PracticeTyp") or GetGlobalVariable("PracticeNivo") ~= self.oldp2 then
		self.oldp1 = GetGlobalVariable("PracticeTyp")
		self.oldp2 = GetGlobalVariable("PracticeNivo")
		local ntxt = 165	
		if GetGlobalVariable("PracticeTyp") == 0 then
			ntxt = ntxt + GetGlobalVariable("PracticeNivo")
		elseif GetGlobalVariable("PracticeTyp") == 1 then
			ntxt = ntxt + 3 + GetGlobalVariable("PracticeNivo")
		else
			ntxt = ntxt + 6 + GetGlobalVariable("PracticeNivo")
		end
		self.textm = GetText(164).."\n"..GetText(ntxt)
	end
	PrintStringOn("PRA_TXT_ECRANINFO" ,self.textm, S_FONTE, S_MF,"CENTER"	, S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)


	if PushEsc()==1 then
		StopEsc()
		Selected("PRA_BT_BACK")
		LoadInterface("Menu_Principal")
	end

end

-- Function 'End'
function PRA_Fond:End()

end
