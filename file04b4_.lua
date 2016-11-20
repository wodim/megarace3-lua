CMU_Team={aff,txt,team,re}

-- Function 'Init'
function CMU_Team:Init()

		local ngametyp = getNetGameType()
		if ngametyp == "SOLO" then
			self.aff = 0
		elseif ngametyp == "TEAM" then
			self.aff = 1
		elseif ngametyp == "FLAG" then
			self.aff = 1
		elseif ngametyp == "FOX" then
			self.aff = 0
		end

		if self.aff == 1 then
			if cpl1 == 0 then
				self.re = 725
				self.team = 2
				setPlayerTeam(self.team)
			else
				self.team = cpl1
				if self.team == 1 then
					self.re = 726
				else
					self.re = 725
				end
			end
			ShowInterfaceEntity("CMU_Flecheg")
			ShowInterfaceEntity("CMU_Fleched")
			self.txt = GetText(724).." "..GetText(self.re)
		elseif self.aff == 0 then
			HideInterfaceEntity("CMU_Flecheg")
			HideInterfaceEntity("CMU_Fleched")
			setPlayerTeam(0)
		end


end

-- Function 'Update'
function CMU_Team:Update()


	if self.aff == 1 then
		if IsSelected()==1 then
			PrintStringOn("CURRENT", self.txt, S_FONTE, S_MF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT",  self.txt, S_FONTE, S_MF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end

		if PushRightSelected() == 1 then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.re == 725 then 
				self.re = 726 
				self.team = 1
			else 
				self.re = 725 
				self.team = 2
			end
			self.txt = GetText(724).." "..GetText(self.re)
			setPlayerTeam(self.team)
		end

		if PushLeftSelected() == 1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			if self.re == 725 then 
				self.re = 726 
				self.team = 1
			else 
				self.re = 725 
				self.team = 2
			end
			self.txt = GetText(724).." "..GetText(self.re)
			setPlayerTeam(self.team)
		end


		if PushUpSelected() == 1 then
			StopUp()
			Selected("CMU_Create")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end

		if PushDownSelected() == 1 then
			StopDown()
			Selected("CMU_password")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end
	end

end

-- Function 'End'
function CMU_Team:End()

end

