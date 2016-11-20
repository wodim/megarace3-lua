FIN_Fond={modfin,catfin,cargm,tmpx,cargp}

-- Function 'Init'
function FIN_Fond:Init()

	ChargeSon("MenuAPP")
	ChargeSon("MenuHB")
	ChargeSon("MenuGD")
	ChargeSon("MenuVAL")
	ChargeSon("MenuIMP")
	ChargeSon("MenuPOP")
	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")

	JoueFluxMusique("InterfaceMenu", 0, TRUE)
	JoueSon2DNoInst("MenuAPP",0,-1)

	ChangeTexture("CURRENT","Fond","statmulti_fin")

	LoadEntityAnim("FIN_ANI_Fond","logo")
	StartEntityAnim("FIN_ANI_Fond","logo",1,-1,1)

	HideInterfaceEntity("FIN_TXT_GRDTITRE")
	HideInterfaceEntity("FIN_TXT_PETTITRE")
	HideInterfaceEntity("FIN_BT_NOMJOUEUR")

	HideInterfaceEntity("FIN_BT_SELECT")

	HideInterfaceEntity("FIN_BT_BACK")

	HideInterfaceEntity("fin_choixactif01")
	HideInterfaceEntity("fin_choixactif02")
	HideInterfaceEntity("fin_choixactif03")

	HideInterfaceEntity("FIN_TXT_GDTITRE")
	HideInterfaceEntity("FIN_TXT_NOM_INFO")
	HideInterfaceEntity("FIN_TXT_LOGOM3")
	HideInterfaceEntity("FIN_TXT_ECRANINFO")
	HideInterfaceEntity("FIN_TXT_INFODIVERSE")
	HideInterfaceEntity("FIN_choixstat01")
	HideInterfaceEntity("FIN_choixstat02")
	HideInterfaceEntity("FIN_choixstat03")
	HideInterfaceEntity("FIN_choixstat04")
	HideInterfaceEntity("FIN_choixstat05")
	HideInterfaceEntity("FIN_choixstat06")
	HideInterfaceEntity("FIN_choixstat07")
	HideInterfaceEntity("FIN_choixstat08")
	HideInterfaceEntity("FIN_choixstat09")
	HideInterfaceEntity("FIN_choixstat10")

	HideInterfaceEntity("fin_titretablo01")
	HideInterfaceEntity("fin_titretablo02")
	HideInterfaceEntity("fin_titretablo03")
	HideInterfaceEntity("fin_titretablo04")
	HideInterfaceEntity("fin_titretablo05")
	HideInterfaceEntity("fin_titretablo06")
	HideInterfaceEntity("fin_titretablo07")
	HideInterfaceEntity("fin_titretablo08")
	HideInterfaceEntity("fin_gros")

	HideInterfaceEntity("fin_spin_letter")
	HideInterfaceEntity("fin_loop_letter")
	HideInterfaceEntity("fin_shield_letter")
	HideInterfaceEntity("fin_shoot_letter")
	HideInterfaceEntity("fin_dep_letter")


	local nomtrck
	local numtrck = (GetEtat() + 1)/2
	local gm	= GetGameMode()
	local etat	= GetTrackState(gm)
	player = GetPlayerName()

				PrintDebug("game mode : "..gm)
				PrintDebug("Track State : "..etat)
				PrintDebug("Track State new : "..numtrck )


	self.modfin = 0
	self.catfin = 0
	self.cargm = 0
	self.tmpx = 0
	self.cargp = 0

	SetGlobalVariable("gAskToSave", TRUE)

	if gm == MODE_ARCADE then
	-- ----------------------
		SetGlobalVariable("gCallSaveMenu", TRUE)
		SetGlobalVariable("gOnlyGameData", TRUE)
		SetGlobalVariable("gPlayerDataToo", FALSE)
		if PlayerWin() == 1 then
			if etat < 8 then 
				local m = numtrck + 1
				SetTrackState(gm,m) 
				if m < 8 then
					m = 40+ m
					m = GetText(m)
					SetTrackAvailable(gm,m,1)
				else
					SetGlobalVariable("gPlayerDataToo", TRUE)
					ActivePodBonus (1,1)
					self.catfin	 = 1
					self.modfin = 1
					SetTrackState(MODE_CARRIERE,1)
				end
			end
			if numtrck < 7 then
				Selected("fin_choixactif01")
			else
				Selected("fin_choixactif03")
				self.modfin = 1
			end
		else
			if GetGlobalVariable("nbretryarcade") == 0 then
				self.tmpx = 1
				Selected("fin_choixactif03")
			else
				Selected("fin_choixactif02")
			end
		end

	elseif gm == MODE_CATASTROPHE then
	-- -------------------------------
		SetGlobalVariable("gCallSaveMenu", TRUE)
		SetGlobalVariable("gOnlyGameData", TRUE)
		if etat<7 then
			PrintDebug("Etat="..etat)
			SetGlobalVariable("gPlayerDataToo", TRUE)
		else
			SetGlobalVariable("gPlayerDataToo", FALSE)
		end

		if PlayerWin() == 1 then
			local m = numtrck + 1
			if etat ~= 7 and numtrck >= etat then
				SetTrackState(gm,m)
				if m < 7 then 
					nomtrck="L"..m
					SetTrackAvailable(gm, nomtrck, 1)
					PrintDebug(nomtrck.." Available")
				else
					SetGlobalVariable("gPlayerDataToo", TRUE)
					ActivePodBonus (0,1)
					self.catfin	 = 1
					self.modfin = 1
				end
			end
			if m < 7 then
				Selected("fin_choixactif01")
			else
				Selected("fin_choixactif03")
				self.modfin = 1
			end
		else
			Selected("fin_choixactif02")
				
		end
		HideInterfaceEntity("fin_spin")
		HideInterfaceEntity("fin_loop")
		HideInterfaceEntity("fin_shield")
		HideInterfaceEntity("fin_shoot")
		HideInterfaceEntity("fin_dep")

	elseif gm == MODE_CARRIERE then
	-- ----------------------------
		SetGlobalVariable("gCallSaveMenu", TRUE)
		SetGlobalVariable("gOnlyGameData", TRUE)
		SetGlobalVariable("gPlayerDataToo", TRUE)

		local m = numtrck + 1
		if etat < 8 and numtrck >= etat then
			local no = 1
			while no < 9 do
				local value = GetPodAtRank(no)
				local nbp = 0
				if no == 1 then 
					nbp = 10
				elseif no == 2 then
					nbp = 6
				elseif no == 3 then
					nbp = 4
				elseif no == 4 then
					nbp = 3
				elseif no == 5 then
					nbp = 2
				elseif no == 6 then
					nbp = 1
				end
				if value == "Player1" then value = player end
				AddPointTo(value,nbp)
				no = no + 1
			end
			SortCompetitor()
			if m < 8 then 
				SetTrackState(gm,m)
				nomtrck="C"..m
				SetTrackAvailable(gm, nomtrck, 1)
				PrintDebug(nomtrck.." Available")
				Selected("fin_choixactif01")
			else
				SetTrackState(gm,m)
				SetGlobalVariable("CarriereGagne",1)
				if GetCSFlag() == 0 then
					SetGlobalVariable("CarriereGagne",2)
				else
					if IsPodBonusActive(0) == 0 and GetPodAtRank(1) == "Player1" then 
						ActivePodBonus(3,1)
						self.cargp = 1
					end	
				end
				self.modfin = 1
				self.catfin	 = 1
				Selected("FIN_Fond")
			end
		end
		if GetGlobalVariable("GainCar") > 0 then
			local racew = GetGlobalVariable("GainCar")
			if racew <= 4 then
				if IsAttModuleBonusActive(racew - 1) == 0 then
					self.cargm = 1
					ActiveAttModuleBonus(racew - 1,1)
				end
			elseif racew <=8 then
				if IsDefModuleBonusActive(racew - 5) == 0 then
					self.cargm = 1
					ActiveDefModuleBonus(racew - 5,1)
				end

			else
				if IsSpeedModuleBonusActive(racew - 9) == 0 then
					self.cargm = 1
					ActiveSpeedModuleBonus(racew - 9,1)
				end
			end
			local i = 0
			local t = 0
			PrintDebug("New module")
			while i < 4 do
				t = t + IsAttModuleBonusActive(i)
				t = t + IsDefModuleBonusActive(i)
				t = t + IsSpeedModuleBonusActive(i)
				i = i + 1
			end
			if t == 12 and IsPodBonusActive(2) == 0 then
				ActivePodBonus(2,1)
				self.tmpx = 1
			end
		end
	end


end

-- Function 'Update'
function FIN_Fond:Update()


	local value = 0
	local totaltime = GetPodStat("Player1", STAT_TOTAL_TIME)

	if GetGameMode() == MODE_ARCADE then
	-- ---------------------------------
		value = GetText(360).." "..GetPodStat("Player1", STAT_MAX_SPEED).." nmh"
		PrintStringOn("FIN_choixstat01", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(361).." "..GetPodStat("Player1", STAT_AVERAGE_SPEED).." nmh"
		PrintStringOn("FIN_choixstat02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(362).." "..GetPodStat("Player1", STAT_FAST_TIME_LAP).." ns"
		PrintStringOn("FIN_choixstat03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat("Player1", STAT_ATT_MOD_TIME)
		value = value.." % "..GetText(363)
		PrintStringOn("FIN_choixstat04", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat("Player1", STAT_DEF_MOD_TIME)
		value = value.." % "..GetText(364)
		PrintStringOn("FIN_choixstat05", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat("Player1", STAT_VIT_MOD_TIME)
		value = value.." % "..GetText(365)
		PrintStringOn("FIN_choixstat06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(366).." "..GetPodStat("Player1", STAT_SHOT_NUM)
		PrintStringOn("FIN_choixstat07", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(367).." "..GetPodStat("Player1", STAT_SEC_BONUS_NUM)
		PrintStringOn("FIN_choixstat08", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetBonusNegNum("Player1", BN_NO_TURN) + GetBonusNegNum("Player1", BN_TOP_SPEED) + GetBonusNegNum("Player1", BN_BLIND) + GetBonusNegNum("Player1", BN_BLOCK_MODULE) + GetBonusNegNum("Player1", BN_INVERSE_COMMAND) + GetBonusNegNum("Player1", BN_STEAL)
		value = GetText(368).." "..value
		PrintStringOn("FIN_choixstat09", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetBonusPlusNum("Player1", BP_SPIN)
		PrintStringOn("fin_spin_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_LOOP)
		PrintStringOn("fin_loop_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_USEFUL_SHIELD)
		PrintStringOn("fin_shield_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_SHOOT)
		PrintStringOn("fin_shoot_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_OVERTAKING)
		PrintStringOn("fin_dep_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetPodAtRank(1)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo01", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(2)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(3)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(4)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo04", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(5)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo05", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(6)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(7)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo07", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		value = GetPodAtRank(8)
		if value == "Player1" then value = player end
		if value~=nil then
			PrintStringOn("fin_titretablo08", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end
		if self.tmpx == 1 then
			StartClock("FIN_TXT_INFODIVERSE",0,6)
			self.tmpx = 0
		end
		if self.catfin == 1 then
			StartClock("FIN_TXT_INFODIVERSE",0,0)
			self.catfin = 0
		end

	elseif GetGameMode() == MODE_CATASTROPHE then
	-- ------------------------------------------
		local base = 310
		if PlayerWin() == 1 then base = 320 end
		value = base + (GetEtat() - 1) / 2
		PrintTextOn("fin_gros", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = ""..GetStatPodAudimat("Player1")
		value = value.." %"
		PrintTextOn("fin_titretablo01", 370 , S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintStringOn("fin_titretablo01", value, S_FONTE, S_MF,"RIGHT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(360).." "..GetPodStat("Player1", STAT_MAX_SPEED).." nmh"
		PrintStringOn("FIN_choixstat01", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(361).." "..GetPodStat("Player1", STAT_AVERAGE_SPEED).." nmh"
		PrintStringOn("FIN_choixstat02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(362).." "..GetPodStat("Player1", STAT_FAST_TIME_LAP).." ns"
		PrintStringOn("FIN_choixstat03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = (GetPodStat("Player1", STAT_ATT_MOD_TIME))
		value = value.." % "..GetText(363)
		PrintStringOn("FIN_choixstat04", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = (GetPodStat("Player1", STAT_DEF_MOD_TIME))
		value = value.." % "..GetText(364)
		PrintStringOn("FIN_choixstat05", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = (GetPodStat("Player1", STAT_VIT_MOD_TIME))
		value = value.." % "..GetText(365)
		PrintStringOn("FIN_choixstat06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		if self.catfin == 1 then
			self.catfin = 0
			StartClock("FIN_TXT_INFODIVERSE",0,2)
		end

	elseif GetGameMode() == MODE_CARRIERE then
	-- ---------------------------------------
		value = GetText(360).." "..GetPodStat("Player1", STAT_MAX_SPEED).." nmh"
		PrintStringOn("FIN_choixstat01", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(361).." "..GetPodStat("Player1", STAT_AVERAGE_SPEED).." nmh"
		PrintStringOn("FIN_choixstat02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(362).." "..GetPodStat("Player1", STAT_FAST_TIME_LAP).." ns"
		PrintStringOn("FIN_choixstat03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat("Player1", STAT_ATT_MOD_TIME)
		value = value.." % "..GetText(363)
		PrintStringOn("FIN_choixstat04", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat("Player1", STAT_DEF_MOD_TIME)
		value = value.." % "..GetText(364)
		PrintStringOn("FIN_choixstat05", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodStat("Player1", STAT_VIT_MOD_TIME)
		value = value.." % "..GetText(365)
		PrintStringOn("FIN_choixstat06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(366).." "..GetPodStat("Player1", STAT_SHOT_NUM)
		PrintStringOn("FIN_choixstat07", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetText(367).." "..GetPodStat("Player1", STAT_SEC_BONUS_NUM)
		PrintStringOn("FIN_choixstat08", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetBonusNegNum("Player1", BN_NO_TURN) + GetBonusNegNum("Player1", BN_TOP_SPEED) + GetBonusNegNum("Player1", BN_BLIND) + GetBonusNegNum("Player1", BN_BLOCK_MODULE) + GetBonusNegNum("Player1", BN_INVERSE_COMMAND) + GetBonusNegNum("Player1", BN_STEAL)
		value = GetText(368).." "..value
		PrintStringOn("FIN_choixstat09", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetBonusPlusNum("Player1", BP_SPIN)
		PrintStringOn("fin_spin_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_LOOP)
		PrintStringOn("fin_loop_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_USEFUL_SHIELD)
		PrintStringOn("fin_shield_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_SHOOT)
		PrintStringOn("fin_shoot_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetBonusPlusNum("Player1", BP_OVERTAKING)
		PrintStringOn("fin_dep_letter", value, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		value = GetPodAtRank(1)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo01", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(2)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo02", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(3)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo03", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(4)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo04", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(5)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo05", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(6)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo06", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(7)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo07", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		value = GetPodAtRank(8)
		if value == "Player1" then value = player end
		PrintStringOn("fin_titretablo08", value, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)

		if self.cargm == 1 and self.tmpx == 0 then
			self.cargm = 0
			StartClock("FIN_TXT_INFODIVERSE",0,4)
		elseif self.cargm == 1 and self.tmpx == 1 then
			self.cargm = 0
			StartClock("FIN_TXT_INFODIVERSE",0,8)
		end
		if self.cargp == 1 then
			StartClock("FIN_TXT_INFODIVERSE",0,10)
			self.cargp = 0
		end
	end


--PrintDebug("____________________________________________________________")
--value = "Audimat="..GetPodStat("Player1", STAT_AUDIMAT)
--PrintDebug(value)

--value = "Time(1)="..GetStatRankTime("Player1", 1)
--PrintDebug(value)
--value = "Time(2)="..GetStatRankTime("Player1", 2)
--PrintDebug(value)
--value = "Time(3)="..GetStatRankTime("Player1", 3)
--PrintDebug(value)
--value = "Time(4)="..GetStatRankTime("Player1", 4)
--PrintDebug(value)
--value = "Time(5)="..GetStatRankTime("Player1", 5)
--PrintDebug(value)
--value = "Time(6)="..GetStatRankTime("Player1", 6)
--PrintDebug(value)
--value = "Time(7)="..GetStatRankTime("Player1", 7)
--PrintDebug(value)
--value = "Time(8)="..GetStatRankTime("Player1", 8)
--PrintDebug(value)
--PrintDebug("____________________________________________________________")


	if PushEnterSelected() == 1 then
		StopEnter()
		LoadInterface("Menu_Carriere")
	end

--	if PushEsc()==1 then
--		StopEsc()
		-- Arcade	
--		if GetGameMode() == 2 then
--			LoadInterface("Menu_Principal")
--		end
--		-- Catastrophe
--		if GetGameMode()==3 then
--			LoadInterface("Menu_Cata")
--		end
		-- Carriere
--		if GetGameMode()==4 then
--			LoadInterface("Menu_Carriere")
--		end
		-- Practice
--		if GetGameMode()==5 then
--		end
--		Selected("FIN_BT_BACK")
--	end
	
end

-- Function 'End'
function FIN_Fond:End()
end

function FIN_Fond:Clock(Id)
end

function FIN_Fond:Popup(id, res)
end
