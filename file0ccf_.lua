kyu28={aff}

function kyu28:Init()
	EnableCollisionDetection("CURRENT",1)		
	SetEntityDamage(self.name,50)
	SetEntityDamageMult(self.name,1.5)
	self.aff = 0
end

function kyu28:Update()
	if GetLuaObject("check_2").tour  == 2 and self.aff == 0 then
		HideEntity("CURRENT")
		EnableCollisionDetection("CURRENT",0)	
		self.aff = 1
	end
end

function kyu28:End()
end







