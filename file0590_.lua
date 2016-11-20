RSO_bttablo01={trckname,trckidx,first1}

-- Function 'Init'
function RSO_bttablo01:Init()
	self.first1 = 0
end

-- Function 'Update'
function RSO_bttablo01:Update()

	if self.first1 == 0 then
		LoadTrackInfo(GetUsedTrackName())
		self.trckname	= GetTrackInfo(GetUsedTrackName(), "Nom")
		self.trckidx	= GetUsedTrackIndex()
		self.first1 = 1
		if GetLuaObject("RSO_bttablo02").oldnbc > 1 then
			GetLuaObject("RSO_bttablo02").refresh = 0
		end
	end


	if PushUpSelected()==1 then
		StopUp()
		JoueSon2DNoInst("MenuHB", 0,-1)
		Selected("RSO_nomsession")
	end

	if PushDownSelected()==1 then
		StopDown()
		JoueSon2DNoInst("MenuHB", 0,-1)
		if GetLuaObject("RSO_nbcourse").nbc > 1 then
			Selected("RSO_bttablo02")
		else
			Selected("RSO_Create")
		end
	end

	if PushRightSelected() == 1 then
		StopRight()
		JoueSon2DNoInst("MenuGD", 0,-1)
		NextTrack()
		LoadTrackInfo(GetUsedTrackName())
		self.trckname	= GetTrackInfo(GetUsedTrackName(), "Nom")
		self.trckidx	= GetUsedTrackIndex()
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		JoueSon2DNoInst("MenuGD", 0,-1)
		PreviousTrack()
		LoadTrackInfo(GetUsedTrackName())
		self.trckname	= GetTrackInfo(GetUsedTrackName(), "Nom")
		self.trckidx	= GetUsedTrackIndex()
	end


	if IsSelected()==1 then
		PrintStringOn("CURRENT", self.trckname, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", self.trckname, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
	end




end

-- Function 'End'
function RSO_bttablo01:End()

end

