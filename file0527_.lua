MUL_Fond={idx}

-- Function 'Init'
function MUL_Fond:Init()


	StartModeNetASOLO()
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	ChangeTexture("CURRENT","Fond","mapfondmultiplaya")
--	JoueFluxMusique("InterfaceMenu", 0, 1);

--	JoueSon2DNoInst("MenuAPP",0,-1)

	LoadEntityAnim("MUL_ANI_Fond","logo")
	StartEntityAnim("MUL_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("MUL_TXT_GRDTITRE")
	HideInterfaceEntity("MUL_TXT_PETTITRE")
	HideInterfaceEntity("MUL_BT_NOMJOUEUR")



--	HideInterfaceEntity("MUL_TXT_NOM_INFO")
	HideInterfaceEntity("MUL_TXT_LOGOM3")
	HideInterfaceEntity("MUL_vaisseau")
--	HideInterfaceEntity("MUL_TXT_INFODIVERSE")
	HideInterfaceEntity("MUL_option01")
	HideInterfaceEntity("MUL_option02")
	HideInterfaceEntity("MUL_option03")
	HideInterfaceEntity("MUL_option04")
	HideInterfaceEntity("MUL_el_tableau01")
	HideInterfaceEntity("MUL_el_tableau02")
	HideInterfaceEntity("MUL_el_tableau03")
	HideInterfaceEntity("MUL_el_tableau04")
	HideInterfaceEntity("MUL_el_tableau05")
	HideInterfaceEntity("MUL_el_tableau06")
	HideInterfaceEntity("MUL_el_tableau07")

	HideInterfaceEntity("MUL_Fleche05")
	HideInterfaceEntity("MUL_Fleche06")
	HideInterfaceEntity("MUL_Fleche010")
	HideInterfaceEntity("MUL_Fleche011")

	HideInterfaceEntity("MUL_type01")
	HideInterfaceEntity("MUL_type02")
	HideInterfaceEntity("MUL_type03")
	HideInterfaceEntity("MUL_type04")
	HideInterfaceEntity("MUL_type05")
	HideInterfaceEntity("MUL_type06")

	local n = 1
	while n <= 31 do
		if n < 10 then
			n  = "0"..n
		end
		HideInterfaceEntity("MUL_choixtablo"..n)
		n = n + 1
	end

	initNetwork()

	if GetGlobalVariable("ServerDropped") == 1 then
		StartPopupByScript("Popup",727,POPUP_STATE_NONE)
	else
		SetGlobalVariable("ServerDropped",0)
		if AfficheNetGames(0) == 0 then
			Selected("MUL_option04")
			self.idx = 0
		else
			Selected("MUL_type01")
			self.idx = 1
		end

	end

	SetGlobalVariable("PodSelected",0)
		

end

-- Function 'Update'
function MUL_Fond:Update()

	PrintTextOn("MUL_el_tableau01", 82 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintTextOn("MUL_el_tableau02", 83 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintTextOn("MUL_el_tableau03", 84 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintTextOn("MUL_el_tableau04", 93 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintTextOn("MUL_el_tableau05", 94 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintTextOn("MUL_el_tableau06", 86 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	PrintTextOn("MUL_el_tableau07", 85 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	PrintTextOn("MUL_vaisseau", 729 , S_FONTE, S_MUMF,"CENTER",S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

	AfficheNetGames(1)
	
	if PushTab() == 1 then
		StopTab()
		if self.idx == 0 then
			self.idx = 1
			Selected("MUL_type01")
		elseif self.idx == 1  then
			if lng[ing] ~= nil then
				self.idx = 2
				Selected("MUL_choixtablo01")
			else
				self.idx = 0
				Selected("MUL_option01")
			end
		elseif self.idx == 2 then
			self.idx = 0
			Selected("MUL_option01")
		end
	end


--	 PushEsc()==1 then
--		StopEsc()
--		Selected("MUL_back1")
--		LoadInterface("Menu_Principal")
--	end
	
end


-- Function 'End'
function MUL_Fond:End()

end

function MUL_Fond:Popup(id,res)

	if id == 727 then
		SetGlobalVariable("ServerDropped",0)
		if AfficheNetGames(0) == 0 then
			Selected("MUL_option04")
			affng = 0
			self.idx = 0
		else
			Selected("MUL_type01")
			affng = 0
			self.idx = 1
		end
	end

end