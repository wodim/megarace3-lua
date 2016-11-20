kyu27={aff}

function kyu27:Init()
	EnableCollisionDetection("CURRENT",1)		
	SetEntityDamage(self.name,50)
	SetEntityDamageMult(self.name,1.5)
	self.aff = 0
end

function kyu27:Update()

	if GetLuaObject("check_2").tour  == 1 and self.aff == 0 then
		HideEntity("CURRENT")
		EnableCollisionDetection("CURRENT",0)		
		self.aff = 1
	end

end

function kyu27:End()
end








