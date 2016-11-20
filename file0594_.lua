RSO_bttablo05={oldnbc,trckname,trckidx,refresh}

-- Function 'Init'
function RSO_bttablo05:Init()
	self.oldnbc = 1
	if self.oldnbc < 5 then
		HideInterfaceEntity("RSO_fleche_g05")
		HideInterfaceEntity("RSO_fleche_d05")
	end
	self.trckidx = -1

end

-- Function 'Update'
function RSO_bttablo05:Update()

	if 	self.oldnbc ~= GetLuaObject("RSO_nbcourse").nbc then
		self.oldnbc = GetLuaObject("RSO_nbcourse").nbc
		if self.oldnbc < 5 then
			HideInterfaceEntity("RSO_fleche_g05")
			HideInterfaceEntity("RSO_fleche_d05")
			self.trckidx = -1
		else
			ShowInterfaceEntity("RSO_fleche_g05")
			ShowInterfaceEntity("RSO_fleche_d05")
			LoadTrackInfo(GetUsedTrackName())
			self.trckname	= GetTrackInfo(GetUsedTrackName(), "Nom")
			self.trckidx	= GetUsedTrackIndex()
		end
	end
	if self.refresh == 0 then
		LoadTrackInfo(GetUsedTrackName())
		self.trckname	= GetTrackInfo(GetUsedTrackName(), "Nom")
		self.trckidx	= GetUsedTrackIndex()
		self.refresh = 1
	end

	if self.oldnbc > 4 then
		if IsSelected()==1 then
			PrintStringOn("CURRENT", self.trckname, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT", self.trckname, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end


		if PushUpSelected() == 1 then
			StopUp()
			Selected("RSO_bttablo04")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end

		if PushDownSelected() == 1 then
			StopDown()
			Selected("RSO_Create")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end
		if PushRightSelected() == 1 then
			StopRight()
			JoueSon2DNoInst("MenuGD", 0,-1)
			NextTrack()
			LoadTrackInfo(GetUsedTrackName())
			self.trckname = GetTrackInfo(GetUsedTrackName(), "Nom")
			self.trckidx	= GetUsedTrackIndex()
		end

		if PushLeftSelected() == 1 then
			StopLeft()
			JoueSon2DNoInst("MenuGD", 0,-1)
			PreviousTrack()
			LoadTrackInfo(GetUsedTrackName())
			self.trckname = GetTrackInfo(GetUsedTrackName(), "Nom")
			self.trckidx	= GetUsedTrackIndex()
		end	
	end

end

-- Function 'End'
function RSO_bttablo05:End()

end

