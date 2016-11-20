ModVit01={ module3_leftsfx, module3_rightsfx, reactorlsfx, reactorrsfx }


function ModVit01:Init()
	ChargeSon("Speed1")

	SetModuleConso (250,0,0,0,0)
	SetModuleTime (0,0,6)

	self.reactorlsfx = GetEntityName() .. "reactor_left"
	self.reactorrsfx = GetEntityName() .. "reactor_right"

	self.module3_leftsfx = GetEntityName() .. "reactorturbo_left"
	self.module3_rightsfx = GetEntityName() .. "reactorturbo_right"

	loadSFX( "CURRENT", self.reactorlsfx, "sfx_reactor1_left" )
	loadSFX( "CURRENT", self.reactorrsfx, "sfx_reactor1_right" )
	startSFX( self.reactorlsfx )
	startSFX( self.reactorrsfx )

	loadSFX( "CURRENT", self.module3_leftsfx, "sfx_reacturbo1_left" )
	loadSFX( "CURRENT", self.module3_rightsfx, "sfx_reacturbo1_right" )
end

function ModVit01:ReInit()

	startSFX( self.reactorlsfx )
	startSFX( self.reactorrsfx )
end


function ModVit01:Update()
end


function ModVit01:End()
end


function ModVit01:Fnc1()
	JoueSon3D("Speed1", "CURRENT", 1, -1)
	AddModuleSpeed("CURRENT",100,0)
	AddModuleAcceleration("CURRENT",0.01,1)
	SetModuleTopSpeed( "CURRENT" )
	startSFX( self.module3_leftsfx )
	startSFX( self.module3_rightsfx )
end


function ModVit01:Fnc2()
	StoppeSon("Speed1", "CURRENT")
	stopSFX( self.module3_leftsfx )
	stopSFX( self.module3_rightsfx )
end


function ModVit01:KillSfx()
	stopSFX( self.module3_leftsfx )
	stopSFX( self.module3_rightsfx )
	stopSFX( self.reactorlsfx )
	stopSFX( self.reactorrsfx )
end
