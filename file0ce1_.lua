t_bulle_on={pass}

function t_bulle_on:Init()
	self.pass = 0
end

function t_bulle_on:Update()

	if self.pass == 0 then
		if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
			self.pass = 1
			StartClock("CURRENT", 3,0)
		
			JoueSon3D("BulleEau", "o3d_bulle", TRUE, -1)
			JoueSon3D("BulleEau", "o3d_bulle05", TRUE, -1)
			JoueSon3D("BulleEau", "o3d_bulle09", TRUE, -1)
		end
	end

end

function t_bulle_on:End()
end

function t_bulle_on:Clock(id)

	if id == 0 then
		DisplayMsgCata(261)
	end

end