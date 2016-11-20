fin_choixactif03={aff}

-- Function 'Init'
function fin_choixactif03:Init()

	self.aff = 1

	if GetGameMode() == 4 and GetLuaObject("FIN_Fond").catfin == 1 then self.aff = 0 end

end

-- Function 'Update'
function fin_choixactif03:Update()


	if self.aff == 1 then
	if IsSelected()==1 then
		PrintTextOn("CURRENT", 52, S_FONTE, S_MF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", 52, S_FONTE, S_MF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected()==1 then
		StopUp()
		if GetLuaObject("fin_choixactif02").aff == 0 then
			if GetLuaObject("fin_choixactif01").aff == 0 then
				JoueSon2DNoInst("MenuIMP", 0,-1)
			else
				Selected("fin_choixactif01")
				JoueSon2DNoInst("MenuHB", 0,-1)
			end
		else
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("fin_choixactif02")
		end
	end

	if PushDownSelected()==1 then
		StopDown()
		if GetLuaObject("fin_choixactif01").aff == 1 then
			JoueSon2DNoInst("MenuHB", 0,-1)
			Selected("fin_choixactif01")
		else
			if GetLuaObject("fin_choixactif02").aff == 0 then
				JoueSon2DNoInst("MenuIMP", 0,-1)
			else
				JoueSon2DNoInst("MenuHB", 0,-1)
				Selected("fin_choixactif02")
			end	
		end
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("FIN_BT_SELECT")
		LoadInterface("Menu_Principal")
	end
	end
end

-- Function 'End'
function fin_choixactif03:End()

end
