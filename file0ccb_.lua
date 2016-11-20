check_2={tour}

function check_2:Init()
	self.tour = 0	
end

function check_2:Update()
	if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
		if self.tour == 0 and GetLuaObject("check_1").tour == 1 then
			self.tour = 1
		end
		if self.tour == 1 and GetLuaObject("check_1").tour == 2 then
			self.tour = 2
		end
	end

end

function check_2:End()
end