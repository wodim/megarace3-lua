kyu30={aff}

function kyu30:Init()
	EnableCollisionDetection("CURRENT",0)		
	HideEntity("CURRENT")
	SetEntityDamage(self.name,50)
	SetEntityDamageMult(self.name,1.5)
	self.aff = 0
end

function kyu30:Update()

	if GetLuaObject("check_2").tour  == 2 and self.aff == 0 then
		ShowEntity("CURRENT")
		EnableCollisionDetection("CURRENT",1)		
		self.aff = 1
	end

end

function kyu30:End()
end

