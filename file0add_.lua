ModAtt02={ module1SFX }


function ModAtt02:Init()
	SetModuleConso (150,0,0,0,0)
	SetModuleTime (0,0,0)
	SetModuleValTir (250)
	CreatUsedMissileType ("SpineBee")
end


function ModAtt02:Update()
end


function ModAtt02:End()
end


function ModAtt02:Fnc1()
	StartMissile ("SpineBee",10000,nil)
end


function ModAtt02:Fnc2()
end


function ModAtt02:KillSfx()
end
