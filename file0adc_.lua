ModAtt01={ module1SFX }


function ModAtt01:Init()
	SetModuleConso (150,0,0,0,0)
	SetModuleTime (0,0,0)
	SetModuleValTir (250)
	CreatUsedMissileType ("SpineBee")
end


function ModAtt01:Update()
end


function ModAtt01:End()
end


function ModAtt01:Fnc1()
	StartMissile ("SpineBee",10000,nil)
end


function ModAtt01:Fnc2()
end


function ModAtt01:KillSfx()
end
