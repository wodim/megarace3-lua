check_1={tour}

function check_1:Init()
	self.tour = 0	

end

function check_1:Update()
	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		if self.tour == 0 then
			self.tour = 1
		end
		if self.tour ==1 and GetLuaObject("check_2").tour == 1 then
			DisplayMsgCata(262)
			self.tour = 2
		end
	end

end

function check_1:End()
end