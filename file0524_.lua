MUL_type01={idx1,chg,texte1}

-- Function 'Init'
function MUL_type01:Init()
	self.idx1 = 176
	self.chg = 0
	self.texte1 = ""
end

-- Function 'Update'
function MUL_type01:Update()

	

	if self.chg == 0 then
		self.texte1 = GetText(175)..GetText(self.idx1)
		self.chg = 1
	end
	
	if IsSelected()==1 then

		PrintStringOn("CURRENT", self.texte1, S_FONTE, S_MUPF,"CENTER", S_sel.r1, S_sel.v1,S_sel.b1,S_sel.a1,S_sel.r2,S_sel.v2,S_sel.b2,S_sel.a2)
	else
		PrintStringOn("CURRENT", self.texte1, S_FONTE, S_MUPF,"CENTER", S_nsel.r1 , S_nsel.v1 ,S_nsel.b1 ,S_nsel.a1 ,S_nsel.r2 ,S_nsel.v2 ,S_nsel.b2 ,S_nsel.a2)
	end

	if PushDownSelected() == 1 then
		StopDown()
		Selected("MUL_type02")
	end

	if PushRightSelected() == 1 then
		StopRight()
		if self.idx1 < 177 then
			self.idx1 = self.idx1 + 1
		else
			self.idx1 = 176
		end
		self.chg = 0
		affng = 0
	end

	if PushLeftSelected() == 1 then
		StopLeft()
		if self.idx1 > 176 then
			self.idx1 = self.idx1 - 1
		else
			self.idx1 = 176
		end
		self.chg = 0
		affng = 0
	end

	if PushEscSelected()==1 then
		StopEsc()
		Selected("MUL_back1")
		terminateNetwork()
		LoadInterface("Menu_Principal")
	end


end

-- Function 'End'
function MUL_type01:End()

end

