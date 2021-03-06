Unicorns_Ride_sfx={module3_leftsfx, module3_midsfx, module3_rightsfx, reactorLsfx, reactorRsfx, reactorMsfx}

function Unicorns_Ride_sfx:Init()
	ChargeSon("Speed1")

	self.reactorLsfx = GetEntityName() .. "reactor_left"
	self.reactorMsfx = GetEntityName() .. "reactor_mid"
	self.reactorRsfx = GetEntityName() .. "reactor_right"

	self.module3_leftsfx = GetEntityName() .. "reactorturbo_left"
	self.module3_midsfx = GetEntityName() .. "reactorturbo_mid"
	self.module3_rightsfx = GetEntityName() .. "reactorturbo_right"

	loadSFX( "CURRENT", self.reactorLsfx, "sfx_reactor1_left" )
	loadSFX( "CURRENT", self.reactorMsfx, "sfx_reactor1_middle" )
	loadSFX( "CURRENT", self.reactorRsfx, "sfx_reactor1_right" )
	startSFX( self.reactorLsfx )
	startSFX( self.reactorMsfx )
	startSFX( self.reactorRsfx )

	loadSFX( "CURRENT", self.module3_leftsfx, "sfx_reacturbo1_left" )
	loadSFX( "CURRENT", self.module3_midsfx, "sfx_reacturbo1_middle" )
	loadSFX( "CURRENT", self.module3_rightsfx, "sfx_reacturbo1_right")
end

function Unicorns_Ride_sfx:ReInit()

	startSFX( self.reactorLsfx )
	startSFX( self.reactorMsfx )
	startSFX( self.reactorRsfx )
end

function Unicorns_Ride_sfx:Update()
end

function Unicorns_Ride_sfx:End()
end

function Unicorns_Ride_sfx:Fnc1()
	JoueSon3D("Speed1", "CURRENT", 1, -1)
	AddModuleSpeed ("CURRENT", 150, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)
	SetModuleTopSpeed( "CURRENT" )
	startSFX( self.module3_leftsfx )
	startSFX( self.module3_midsfx )
	startSFX( self.module3_rightsfx )
	stopSFX( self.reactorLsfx )
	stopSFX( self.reactorMsfx )
	stopSFX( self.reactorRsfx )
end

function Unicorns_Ride_sfx:Fnc2()
	StoppeSon("Speed1", "CURRENT")
	stopSFX( self.module3_leftsfx )
	stopSFX( self.module3_midsfx )
	stopSFX( self.module3_rightsfx )
	startSFX( self.reactorLsfx )
	startSFX( self.reactorMsfx )
	startSFX( self.reactorRsfx )
end

function Unicorns_Ride_sfx:KillSfx()
	stopSFX( self.module3_leftsfx )
	stopSFX( self.module3_midsfx )
	stopSFX( self.module3_rightsfx )
	stopSFX( self.reactorLsfx )
	stopSFX( self.reactorMsfx )
	stopSFX( self.reactorRsfx )
end
