t_bulle_off={pass}

function t_bulle_off:Init()
	self.pass = 0
end

function t_bulle_off:Update()

	if self.pass == 0 then
		if (SelectEntityEnterInTrigger( "CURRENT", "ALL_PODS", "" ) == 1) then
			self.pass = 1
		
			StoppeSon("BulleEau", "o3d_bulle")
			StoppeSon("BulleEau", "o3d_bulle05")
			StoppeSon("BulleEau", "o3d_bulle09")	
		end
	end

end

function t_bulle_off:End()
end