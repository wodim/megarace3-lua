MUL_option03={Sel}

-- Function 'Init'
function MUL_option03:Init()
	self.Sel = ""
end

-- Function 'Update'
function MUL_option03:Update()

	if IsSelected()==1 then
--		PrintTextOn("CURRENT", 81, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		PrintTextOn("CURRENT", 81, S_FONTE, S_PF,"CENTER", S_RSO_JOIN_S.r1, S_RSO_JOIN_S.v1,S_RSO_JOIN_S.b1,S_RSO_JOIN_S.a1,S_RSO_JOIN_S.r2,S_RSO_JOIN_S.v2,S_RSO_JOIN_S.b2,S_RSO_JOIN_S.a2)
	else
--		PrintTextOn("CURRENT", 81, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		PrintTextOn("CURRENT", 81, S_FONTE, S_PF,"CENTER", S_RSO_JOIN_NS.r1, S_RSO_JOIN_NS.v1,S_RSO_JOIN_NS.b1,S_RSO_JOIN_NS.a1,S_RSO_JOIN_NS.r2,S_RSO_JOIN_NS.v2,S_RSO_JOIN_NS.b2,S_RSO_JOIN_NS.a2)
	end

--	if PushUpSelected() == 1 then
--		StopUp()
--		JoueSon2DNoInst("MenuHB", 0,-1)
--		Selected("MUL_choixtablo01")
--		GetLuaObject("MUL_Fond").idx = 2
--		GetLuaObject("MUL_option03").Sel = ""

--	end

	if PushLeftSelected() == 1 then
		StopLeft()
		GetLuaObject("MUL_option03").Sel = ""
		Selected("MUL_option01")
	end

	if PushRightSelected() == 1 then
		StopRight()
		GetLuaObject("MUL_option03").Sel = ""
		Selected("MUL_option04")
	end

	if PushEnterSelected() == 1 then
		StopEnter()


		if self.Sel ~= "" then
			if lng[self.Sel].nmodegame == "ARCADE" then
				if lng[self.Sel].ntypgame == "SOLO" then
					StartModeNetASOLO()
				elseif lng[self.Sel].ntypgame == "TEAM" then
					StartModeNetATEAM()
				elseif lng[self.Sel].ntypgame == "FLAG" then
					StartModeNetAFLAG()
				elseif lng[self.Sel].ntypgame == "FOX" then
					StartModeNetAFOX()
				end
			elseif lng[self.Sel].nmodegame == "CARRIERE" then
				if lng[self.Sel].ntypgame == "SOLO" then
					StartModeNetCSOLO()
				elseif lng[self.Sel].ntypgame == "TEAM" then
					StartModeNetCTEAM()
				elseif lng[self.Sel].ntypgame == "FLAG" then
					StartModeNetCFLAG()
				elseif lng[self.Sel].ntypgame == "FOX" then
					StartModeNetCFOX()
				end
			end

			if lng[self.Sel].npwd == TRUE then
				StartPopup("Popup_password", 1000000)
			else 
				if joinGame(self.Sel, player,"","") == TRUE then
					LoadInterface("Menu_multiwait")
				else
					affng = 0
				end
			end
		end
	end

	if PushEscSelected()==1 then
		StopEsc()
		Selected("MUL_back1")
		terminateNetwork()
		LoadInterface("Menu_Principal")
	end

end

-- Function 'End'
function MUL_option03:End()

end


-- Function 'Popup'
function MUL_option03:Popup_password (id, res)

	if id==1000000 then
		if res==POPUP_YES then
			if joinGame(self.Sel, player, PwdNet,"") == TRUE then
				PwdNet = ""
				LoadInterface("Menu_multiwait")
			else
				affng = 0
			end
			PwdNet = ""
		end
	end

end
