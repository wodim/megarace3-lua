fin_choixactif01={aff}

-- Function 'Init'
function fin_choixactif01:Init()

	self.aff = 0

	if GetGameMode() == 2 then
		if PlayerWin() == 1 then self.aff = 1 end
		if GetLuaObject("FIN_Fond").modfin == 1 then self.aff = 0 end
	end

	if GetGameMode() == 3 then
		if PlayerWin() == 1 then self.aff = 1 end
		if GetLuaObject("FIN_Fond").modfin == 1 then self.aff = 0 end
	end

	if GetGameMode() == 4 then
		if GetLuaObject("FIN_Fond").modfin == 0 then self.aff = 1 end
	end

end

-- Function 'Update'
function fin_choixactif01:Update()


	if self.aff == 1 then
		if IsSelected()==1 then
			PrintTextOn("CURRENT", 53, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintTextOn("CURRENT", 53, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushUpSelected()==1 then
			StopUp()
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("fin_choixactif03")
		end

		if PushDownSelected()==1 then
			StopDown()
			JoueSon2DNoInst("MenuHB", 0,-1)
			if GetLuaObject("fin_choixactif02").aff == 1 then
				Selected("fin_choixactif02")
			else
				Selected("fin_choixactif03")
			end
		end

		if PushEnterSelected()==1 then
			StopEnter()
			JoueSon2DNoInst("MenuVAL", 0,-1)
			Selected("FIN_BT_SELECT")
			if GetGameMode() == 2 then
				SetGlobalVariable("NTrackArcade", (GetEtat()+1)/2)
				LoadInterface("Menu_Arcade")
			elseif GetGameMode() == 3 then
				SetGlobalVariable("NTrackCata",(GetEtat()+1)/2)
				LoadInterface("Menu_Cata")
			elseif GetGameMode() == 4 then
				SetGlobalVariable("NTrackCarriere",(GetEtat()+1)/2)
				LoadInterface("Menu_Carriere")
			else
				local Course = GetEtat()+1
				SetEtat(Course)
			end
		end
	end
end

-- Function 'End'
function fin_choixactif01:End()

end

