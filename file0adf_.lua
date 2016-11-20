ModDef01={ module2sfx }


function ModDef01:Init()
	ChargeSon("Defense1")

	SetModuleConso (200,0,0,0,0)
	SetModuleTime (0,0,10)

	self.module2sfx = GetEntityName() .. "shield"

	loadSFX( "CURRENT", self.module2sfx, "sfx_shieldAL1" )
end


function ModDef01:Update()
end


function ModDef01:End()
end


function ModDef01:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	NotifyToEntiy ("CURRENT",TE_ADD_DAMAGE_COLL_FACTOR, -500)
	NotifyToEntiy ("CURRENT",TE_ADD_DAMAGE_MISSILE_FACTOR, -500)
	startSFX( self.module2sfx )
end


function ModDef01:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.module2sfx )
end


function ModDef01:KillSfx()
	stopSFX( self.module2sfx )
end
