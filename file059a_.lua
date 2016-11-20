RSO_nomsession={aff,saisie}

-- Function 'Init'
function RSO_nomsession:Init()
	Sessname = player
	self.aff = GetText(82).." : "..Sessname
	self.saisie = 0
end

-- Function 'Update'
function RSO_nomsession:Update()

	if IsSelected()==1 then
		PrintStringOn("CURRENT", self.aff, S_FONTE, S_MUMF,"LEFT", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", self.aff, S_FONTE, S_MUMF,"LEFT", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end

	if PushUpSelected() == 1 and self.saisie == 0 then
		StopUp()
		Selected("RSO_Create")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushDownSelected() == 1 and self.saisie == 0 then
		StopDown()
		Selected("RSO_opt03")
		JoueSon2DNoInst("MenuHB", 0,-1)
	end

	if PushEnterSelected() == 1 then
		StopEnter()
		JoueSon2DNoInst("MenuVAL", 0,-1)
		if self.saisie == 0 then
			StartTextGrab(-1)
			self.saisie = 1
		end
	end

	if self.saisie == 1 then
		Sessname = GetGrabbedText()
		if strlen(Sessname) > 15 then
			Sessname = strsub(Sessname,1,15)
		end
		self.aff = GetText(82).." : "..Sessname
	end


end

-- Function 'End'
function RSO_nomsession:End()

end



function RSO_nomsession:Notify(event)

	if event == TI_GRAB_END then
		StopEnter()
		self.saisie = 0
	end

end