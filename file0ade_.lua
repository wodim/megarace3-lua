ModAtt03={ module1SFX }


function ModAtt03:Init()
	SetModuleConso (150,0,0,0,0)
	SetModuleTime (0,0,0)
	SetModuleValTir (250)
	CreatUsedMissileType ("SpineBee")
end


function ModAtt03:Update()
end


function ModAtt03:End()
end


function ModAtt03:Fnc1()
	StartMissile ("SpineBee",10000,nil)
end


function ModAtt03:Fnc2()
end


function ModAtt03:KillSfx()
end
