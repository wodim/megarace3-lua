PRA_BT_CHOIXACTIF02={txti}

-- Function 'Init'
function PRA_BT_CHOIXACTIF02:Init()
end

-- Function 'Update'
function PRA_BT_CHOIXACTIF02:Update()



	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRA_BT_CHOIXACTIF01")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRA_BT_CHOIXACTIF03")

	end

	if PushRightSelected() == 1 then
		StopRight()
		if (GetPracticeDifficultyResult(GetLuaObject("PRA_BT_CHOIXACTIF01").p2) == 0) then
			JoueSon2DNoInst("MenuIMP", 0,-1)
		else
			JoueSon2DNoInst("MenuGD", 0,-1)
			if GetLuaObject("PRA_BT_CHOIXACTIF01").p2 >= 2 then
				GetLuaObject("PRA_BT_CHOIXACTIF01").p2 = 0
			else
				GetLuaObject("PRA_BT_CHOIXACTIF01").p2 = GetLuaObject("PRA_BT_CHOIXACTIF01").p2 + 1
			end
			Afficheicone(GetLuaObject("PRA_BT_CHOIXACTIF01").p1,GetLuaObject("PRA_BT_CHOIXACTIF01").p2)
			SetGlobalVariable("PracticeNivo",GetLuaObject("PRA_BT_CHOIXACTIF01").p2)
			if self.txti == 356 then
				self.txti = 354
			else
				self.txti = self.txti + 1
			end
		end
			
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		local t = GetLuaObject("PRA_BT_CHOIXACTIF01").p2 - 1
		if t < 0 then t = 2 end 
		if GetPracticeDifficultyResult(t) == 0 then
			JoueSon2DNoInst("MenuIMP", 0,-1)
		else
			JoueSon2DNoInst("MenuGD", 0,-1)
			if GetLuaObject("PRA_BT_CHOIXACTIF01").p2 <= 0 then
				GetLuaObject("PRA_BT_CHOIXACTIF01").p2 = 2
			else
				GetLuaObject("PRA_BT_CHOIXACTIF01").p2 = GetLuaObject("PRA_BT_CHOIXACTIF01").p2 - 1
			end
			Afficheicone(GetLuaObject("PRA_BT_CHOIXACTIF01").p1,GetLuaObject("PRA_BT_CHOIXACTIF01").p2)
			SetGlobalVariable("PracticeNivo",GetLuaObject("PRA_BT_CHOIXACTIF01").p2)
			if self.txti == 354 then
				self.txti = 356
			else
				self.txti = self.txti - 1
			end
		end
	end


	if IsSelected()==1 then
		PrintStringOn("CURRENT", GetText(353)..GetText(self.txti), S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", GetText(353)..GetText(self.txti), S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("PRA_BT_CHOIXACTIF03")
	end
end

-- Function 'End'
function PRA_BT_CHOIXACTIF02:End()

end

