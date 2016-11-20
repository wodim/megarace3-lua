kyu29={aff}

function kyu29:Init()
	HideEntity("CURRENT")
	EnableCollisionDetection("CURRENT",0)		
	self.aff = 0
	SetEntityDamage(self.name,50)
	SetEntityDamageMult(self.name,1.5)

end

function kyu29:Update()
	if GetLuaObject("check_2").tour  == 2 and self.aff == 0 then
		ShowEntity("CURRENT")
		EnableCollisionDetection("CURRENT",1)		
		self.aff = 1
	end
end

function kyu29:End()
end







