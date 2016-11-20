RSO_bttablo02={oldnbc,trckname,trckidx,refresh}

-- Function 'Init'
function RSO_bttablo02:Init()
	self.oldnbc = 1
	if self.oldnbc < 2 then
		HideInterfaceEntity("RSO_fleche_g02")
		HideInterfaceEntity("RSO_fleche_d02")
	end
	self.refresh = 1
	self.trckidx = -1
end

-- Function 'Update'
function RSO_bttablo02:Update()



	if 	self.oldnbc ~= GetLuaObject("RSO_nbcourse").nbc then
		self.oldnbc = GetLuaObject("RSO_nbcourse").nbc
		if self.oldnbc < 2 then
			HideInterfaceEntity("RSO_fleche_g02")
			HideInterfaceEntity("RSO_fleche_d02")
			self.trckidx = -1
		else
			ShowInterfaceEntity("RSO_fleche_g02")
			ShowInterfaceEntity("RSO_fleche_d02")
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
		if GetLuaObject("RSO_bttablo03").oldnbc > 2 then
			GetLuaObject("RSO_bttablo03").refresh = 0
		end
	end

	if self.oldnbc > 1 then
		if IsSelected()==1 then
			PrintStringOn("CURRENT", self.trckname, S_FONTE, S_PF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
		else
			PrintStringOn("CURRENT", self.trckname, S_FONTE, S_PF,"CENTER", S_nsel.r1, S_nsel.v1,S_nsel.b1,S_nsel.a1,S_nsel.r2,S_nsel.v2,S_nsel.b2,S_nsel.a2)
		end


		if PushUpSelected() == 1 then
			StopUp()
			Selected("RSO_bttablo01")
			JoueSon2DNoInst("MenuHB", 0,-1)
		end

		if PushDownSelected() == 1 then
			StopDown()
			if GetLuaObject("RSO_nbcourse").nbc > 2 then
				Selected("RSO_bttablo03")
			else
				Selected("RSO_Create")
			end
			JoueSon2DNoInst("MenuHB", 0,-1)
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
	end

end

-- Function 'End'
function RSO_bttablo02:End()

end

