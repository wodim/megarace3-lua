MI_FOND={oldSelected}

-- ************************************************************************************
-- Function 'Init'
-- ************************************************************************************
function MI_FOND:Init()

--	ResetCompetitorTab()
--	AddPointTo("p1",0)
--	AddPointTo("p2",0)
--	AddPointTo("p3",0)
--	AddPointTo("p4",0)
--	AddPointTo("p5",0)
--	AddPointTo("p6",0)
--	AddPointTo("p7",0)
--	AddPointTo("p8",0)
--	SortCompetitor()

--	PrintDebug("\n----------------------------------------------------")
--	r = 1
--	while r<9 do
--		PrintDebug(GetPodNameAtRank(r).."<---->"..GetPodScoreAtRank(r))
--		r = r + 1
--	end
--	PrintDebug("----------------------------------------------------")

--	AddPointTo("p1",10)
--	AddPointTo("p2",1)
--	AddPointTo("p3",6)
--	AddPointTo("p4",0)
--	AddPointTo("p5",4)
--	AddPointTo("p6",0)
--	AddPointTo("p7",3)
--	AddPointTo("p8",2)
--	SortCompetitor()

--	PrintDebug("\n----------------------------------------------------")
--	r = 1
--	while r<9 do
--		PrintDebug(GetPodNameAtRank(r).."<---->"..GetPodScoreAtRank(r))
--		r = r + 1
--	end
--	PrintDebug("----------------------------------------------------")

--	AddPointTo("p1",10)
--	AddPointTo("p2",1)
--	AddPointTo("p3",0)
--	AddPointTo("p4",3)
--	AddPointTo("p5",2)
--	AddPointTo("p6",6)
--	AddPointTo("p7",0)
--	AddPointTo("p8",4)
--	SortCompetitor()

--	PrintDebug("\n----------------------------------------------------")
--	r = 1
--	while r<9 do
--		PrintDebug(GetPodNameAtRank(r).."<---->"..GetPodScoreAtRank(r))
--		r = r + 1
--	end
--	PrintDebug("----------------------------------------------------")

--	AddPointTo("p1",0)
--	AddPointTo("p2",3)
--	AddPointTo("p3",1)
--	AddPointTo("p4",2)
--	AddPointTo("p5",10)
--	AddPointTo("p6",6)
--	AddPointTo("p7",0)
--	AddPointTo("p8",4)
--	SortCompetitor()

--	PrintDebug("\n----------------------------------------------------")
--	r = 1
--	while r<9 do
--		PrintDebug(GetPodNameAtRank(r).."<---->"..GetPodScoreAtRank(r))
--		r = r + 1
--	end
--	PrintDebug("----------------------------------------------------")

	ChargeSon("MenuAPP")
	ChargeSon("MenuHB")
	ChargeSon("MenuGD")
	ChargeSon("MenuVAL")
	ChargeSon("MenuIMP")
	ChargeSon("MenuPOP")

	loadSFX("CURRENT","logo","sfx_logom3")
	startSFX("logo")


	--ChangeTexture("CURRENT","Fond","gametype")
	ChangeTexture("CURRENT","Fond","interface_optionmenu")

	LoadEntityAnim("MI_ANI_FOND", "logo")
	StartEntityAnim("MI_ANI_FOND", "logo", 1, -1, 1)

	HideInterfaceEntity("MI_TXT_GRDTITRE")
	HideInterfaceEntity("MI_TXT_PETTITRE")

	HideInterfaceEntity("MI_BT_SELECT")
	HideInterfaceEntity("MI_BT_BACK")

	HideInterfaceEntity("MI_BT_CHOIXACTIF01")
	HideInterfaceEntity("MI_BT_CHOIXACTIF02")
	HideInterfaceEntity("MI_BT_CHOIXACTIF03")

	HideInterfaceEntity("MI_TXT_GDTITRE")
	HideInterfaceEntity("MI_TXT_NOM_INFO")
	HideInterfaceEntity("MI_TXT_ECRANINFO")
	HideInterfaceEntity("MI_TXT_INFODIVERSE")
	HideInterfaceEntity("MI_BT_ECRANTV")

	SetGlobalVariable("gAskToSave", FALSE)
	SetGlobalVariable("gCallSaveMenu", FALSE)
	SetGlobalVariable("gOnlyGameData", FALSE)
	SetGlobalVariable("gPlayerDataToo", FALSE)

	self.oldSelected = ""

	ResetSLDS()

	if GetGlobalVariable("gFirstTime")==TRUE then
		gLS_mode	= LS_MODE_INIT
		gLS_state	= LS_STATE_INIT
	else
		if GetGlobalVariable("gCanContinue")==TRUE then
			Selected("MI_BT_CHOIXACTIF03")
		elseif GetGlobalVariable("gCanLoad")==TRUE then
			Selected("MI_BT_CHOIXACTIF02")
		else
			Selected("MI_BT_CHOIXACTIF01")
		end
	end

end

-- ************************************************************************************
-- Function 'Update'
-- ************************************************************************************
function MI_FOND:Update()

	local pf = GetPlatform()

	if pf==PLATFORM_PC and PushEsc()==TRUE then
		StopEsc()
		self.oldSelected = GetSelectedEntity()
		Selected("MI_BT_BACK")
		StartPopupByScript("Popup", 660, POPUP_STATE_YES_NO)
	end

-- ----------------- TEST -------------------
--	if PushRight()==TRUE then
--		StopRight()
--		SetMode16_9(TRUE)
--	end

--	if PushLeft()==TRUE then
--		StopLeft()
--		SetMode16_9(FALSE)
--	end
-- ------------------------------------------

	-- --------------------------------------------------------------------------------
	-- MODE INIT
	-- --------------------------------------------------------------------------------
	if gLS_mode==LS_MODE_INIT then

		if gLS_state==LS_STATE_INIT then
		-- -----------------------------------
			if pf==PLATFORM_PS2 then
				StartPopupByScript("Popup", 572, POPUP_STATE_WAIT)
				StartClock("CURRENT", 1, 10572)
				gLS_state = LS_STATE_WAIT
			else
				gLS_state = LS_STATE_ENTER
			end

		elseif gLS_state==LS_STATE_ENTER then
		-- ----------------------------------
			if GetGlobalVariable("gFirstTime")==TRUE then

				SetGlobalVariable("gFirstTime", FALSE)
				SetGlobalVariable("gCanContinue", FALSE)
				SetGlobalVariable("gCanLoad", FALSE)

				-- Essaie de charger les data du jeu et regarde si le joueur peut continuer une partie
				if InitGameLancement(pf)==TRUE then
					SetGlobalVariable("gCanLoad", TRUE)

					local lgn = GetLastGameName()
					if lgn~=nil and lgn~="" then
						if pf==PLATFORM_PC and IsPlayerGameFree(lgn)==TRUE then
							ResetLastGameName()
						else
							SetGlobalVariable("gCanContinue", TRUE)
						end
					end
				end

			else
				gLS_state = LS_STATE_QUIT
			end

		elseif gLS_state==LS_STATE_QUIT then
		-- ---------------------------------
			if GetGlobalVariable("gCanContinue")==TRUE then
				Selected("MI_BT_CHOIXACTIF03")
			elseif GetGlobalVariable("gCanLoad")==TRUE then
				Selected("MI_BT_CHOIXACTIF02")
			else
				Selected("MI_BT_CHOIXACTIF01")
			end

			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE

			-- Ici les parametres de la sauvegarde devraient etre lus
			JoueFluxMusique("InterfaceMenu", 0, TRUE)
			JoueSon2DNoInst("MenuAPP", 0, -1)
		end

	-- --------------------------------------------------------------------------------
	-- MODE CONTINUE
	-- --------------------------------------------------------------------------------
	elseif gLS_mode==LS_MODE_CONTINUE then

		if gLS_state==LS_STATE_ENTER then
		-- ------------------------------
			if pf==PLATFORM_PS2 then
				StartPopupByScript("Popup", 604, POPUP_STATE_WAIT)
				StartClock("CURRENT", 1, 604)
				gLS_state = LS_STATE_WAIT
			else
				gLS_state = LS_STATE_LOAD
			end

		elseif gLS_state==LS_STATE_LOAD then
		-- ---------------------------------
			local ls = GetLastGameName()
			if ls~=nil and ls~="" then
				local lpg = LoadPlayerGame(ls)

				if lpg==BM_CANCEL_BY_CHANGE then
					SetValuePopupByScript(522, POPUP_STATE_NONE)
					gLS_state	= LS_STATE_WAIT

				elseif lpg==BM_OK then
					player = GetPlayerName()
					if pf==PLATFORM_PS2 then
						SetValuePopupByScript(610, POPUP_STATE_NONE)
						gLS_state	= LS_STATE_WAIT
					else
						gLS_mode	= LS_MODE_NONE
						gLS_state	= LS_STATE_NONE
						LoadInterface("Menu_Principal")
					end

				-- BM_SERIOUS_ERROR during loading
				else
					if pf==PLATFORM_PS2 then
						SetValuePopupByScript(608, POPUP_STATE_NONE)
					else
						StartPopupByScript("Popup", 609, POPUP_STATE_NONE)
					end
					gLS_state	= LS_STATE_WAIT
				end
			else
				gLS_mode	= LS_MODE_INIT
				gLS_state	= LS_STATE_INIT
			end
		end
	end

	-- --------------------------------------------------------------------------------
	-- MODE LOAD
	-- --------------------------------------------------------------------------------
	LoadAutomateUpdatePart1(pf, "MI_BT_CHOIXACTIF02")

end

-- ************************************************************************************
-- Function 'End'
-- ************************************************************************************
function MI_FOND:End()
end

-- ************************************************************************************
-- Function 'Clock'
-- ************************************************************************************
function MI_FOND:Clock (Id)

	-- --------------------------------------------------------------------------------
	InitGameLancementClock(Id)

	-- --------------------------------------------------------------------------------
	if gLS_mode==LS_MODE_LOAD then
		if Id==572 then
			SetGlobalVariable("gPOPUP_state", POPUP_STATE_QUIT)
		end
	end

	-- --------------------------------------------------------------------------------
	if gLS_mode==LS_MODE_CONTINUE then
		if Id==604 then
			gLS_state = LS_STATE_LOAD
		end
	end
end

-- ************************************************************************************
-- Function 'Popup'
-- ************************************************************************************
function MI_FOND:Popup (id, res)

	-- --------------------------------------------------------------------------------
	-- Quit the game ?
	if id==660 then
		if res==POPUP_YES then
			QuitGame()
		else
			if self.oldSelected==nil or self.oldSelected=="" then
				Selected("MI_BT_CHOIXACTIF01")
			else
				Selected(self.oldSelected)
			end
		end
	end

	-- --------------------------------------------------------------------------------
	InitGameLancementPopup(id, res)

	-- --------------------------------------------------------------------------------
	LoadAutomatePopupPart1(id, res)

	-- --------------------------------------------------------------------------------
	if gLS_mode==LS_MODE_CONTINUE then

		-- If error, retry ...
		if id==522 or id==608 or id==609 then
			gLS_mode	= LS_MODE_INIT
			gLS_state	= LS_STATE_WAIT
			StartPopupByScript("Popup", 662, POPUP_STATE_YES_NO)

		-- If ok, go to main menu ...
		elseif id==610 then
			gLS_mode	= LS_MODE_NONE
			gLS_state	= LS_STATE_NONE
			LoadInterface("Menu_Principal")
		end
	end

end
