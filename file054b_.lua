fin_choixactif02={aff,txt}

-- Function 'Init'
function fin_choixactif02:Init()

	self.aff = 1
	self.txt = GetText(28)
	if GetGameMode() == 2 then
		if (((GetEtat() + 1) / 2) + 1  == 8 and PlayerWin == 1) then self.aff = 0 end
		if GetGlobalVariable("nbretryarcade") == 0 then self.aff = 0 end
		if GetLuaObject("FIN_Fond").modfin == 1 then self.aff = 0 end
		if GetTrackState(2) < 8 then
			self.txt = self.txt.." ("..GetGlobalVariable("nbretryarcade")
			self.txt = self.txt..")"
		end
	end

	if GetGameMode() == 3 then
		if PlayerWin() == 1 then self.aff = 0 end
		if GetLuaObject("FIN_Fond").modfin == 1 then self.aff = 0 end
	end

	if GetGameMode() == 4 then self.aff = 0	end


end

-- Function 'Update'
function fin_choixactif02:Update()

	if self.aff == 1 then
		if IsSelected()==1 then
			PrintStringOn("CURRENT", self.txt, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT", self.txt, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushUpSelected()==1 then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			if PlayerWin() == 1 then
				Selected("fin_choixactif01")
			else
				Selected("fin_choixactif03")
			end
		end

		if PushDownSelected()==1 then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("fin_choixactif03")
		end

		if PushEnterSelected()==1 then
			StopEnter()
			Selected("FIN_BT_SELECT")
			JoueSon2DNoInst("MenuVAL", 0,-1)
			local jmb = GetGameMode() 
			if jmb == 2 then
				SetGlobalVariable("NTrackArcade", (GetEtat()-1)/2)
				if GetTrackState(jmb) < 8 then
					local t = GetGlobalVariable("nbretryarcade")
					SetGlobalVariable("nbretryarcade", t-1)
				end
				LoadInterface("Menu_Arcade")
			elseif jmb == 3 then
				SetGlobalVariable("NTrackCata",(GetEtat()-1)/2)
				LoadInterface("Menu_Cata")
			else
				local Course=GetEtat()-1
				SetEtat(Course)
			end
		end
	end
end

-- Function 'End'
function fin_choixactif02:End()

end

