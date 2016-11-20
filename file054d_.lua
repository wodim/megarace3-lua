PRA_BT_CHOIXACTIF01={txti,p1,p2}

-- Function 'Init'
function PRA_BT_CHOIXACTIF01:Init()
	self.txti = 350
	self.p1 = 0
	self.p2 = 0
	GetLuaObject("PRA_BT_CHOIXACTIF02").txti = 354

	if GetPracticeDifficultyResult(self.p2) == 1 then
		if GetPracticeDifficultyResult(self.p2 + 1) == 1 then
			if GetPracticeDifficultyResult(self.p2 + 2) == 0 then
				self.p2 = 2
				GetLuaObject("PRA_BT_CHOIXACTIF02").txti = 356
			end
		else
			self.p2 = 1
			GetLuaObject("PRA_BT_CHOIXACTIF02").txti = 355
		end
	end

	if GetPracticeTrackResult(self.p2,self.p1) == 1 then
		if GetPracticeTrackResult(self.p2,self.p1 + 1) == 1 then
			if GetPracticeTrackResult(self.p2,self.p1 + 2) == 0 then
				self.p1 = 2
				self.txti = 352
			end
		else
			self.p1 = 1
			self.txti = 351
		end
	end
	SetGlobalVariable("PracticeTyp",self.p1)
	SetGlobalVariable("PracticeNivo",self.p2)
	Afficheicone(self.p1,self.p2)	
end

-- Function 'Update'
function PRA_BT_CHOIXACTIF01:Update()



	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRA_BT_CHOIXACTIF03")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("PRA_BT_CHOIXACTIF02")
	end

	if PushRightSelected() == 1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		if self.p1 >= 2 then
			self.p1 = 0
		else
			self.p1 = self.p1 + 1
		end
		Afficheicone(self.p1,self.p2)
		SetGlobalVariable("PracticeTyp",self.p1)
		if self.txti == 352 then
			self.txti = 350
		else
			self.txti = self.txti + 1
		end
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		if self.p1 <= 0 then
			self.p1 = 2
		else
			self.p1 = self.p1 - 1
		end
		Afficheicone(self.p1,self.p2)
		SetGlobalVariable("PracticeTyp",self.p1)
		if self.txti == 350 then
			self.txti = 352
		else
			self.txti = self.txti - 1
		end
	end


	if IsSelected()==1 then
		PrintTextOn("CURRENT", self.txti, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintTextOn("CURRENT", self.txti, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushEnterSelected()==1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		Selected("PRA_BT_CHOIXACTIF03")
	end

end

-- Function 'End'
function PRA_BT_CHOIXACTIF01:End()

end


function Afficheicone(typ,nivo)

		local z = GetPracticeTrackResult(nivo ,typ)
		if z == 1 then
			if nivo == 2 then
				ChangeTexture("PRA_ICONE","excelentrookie","or02")
				ShowInterfaceEntity("PRA_ICONE")
			elseif nivo == 1 then
				ChangeTexture("PRA_ICONE","excelentrookie","argent02")
				ShowInterfaceEntity("PRA_ICONE")
			elseif nivo == 0 then
				ChangeTexture("PRA_ICONE","excelentrookie","bronze02")
				ShowInterfaceEntity("PRA_ICONE")
			end
		else
			HideInterfaceEntity("PRA_ICONE")
		end

end