Hermes_Spirit_sfx={module3_leftsfx, module3_midsfx, module3_rightsfx, reactorLsfx, reactorRsfx, reactorMsfx}

function Hermes_Spirit_sfx:Init()
	ChargeSon("Speed1")

	if( IsAPlayer( "CURRENT" ) )
	then
		setCamEffectOnTurbo( 1 )
	end

	self.reactorLsfx = GetEntityName() .. "reactor_left"
	self.reactorMsfx = GetEntityName() .. "reactor_mid"
	self.reactorRsfx = GetEntityName() .. "reactor_right"

	self.module3_leftsfx = GetEntityName() .. "reactorturbo_left"
	self.module3_midsfx = GetEntityName() .. "reactorturbo_mid"
	self.module3_rightsfx = GetEntityName() .. "reactorturbo_right"

	loadSFX( "CURRENT", self.reactorLsfx, "sfx_reactor4_left" )
	loadSFX( "CURRENT", self.reactorMsfx, "sfx_reactor4_middle" )
	loadSFX( "CURRENT", self.reactorRsfx, "sfx_reactor4_right" )
	startSFX( self.reactorLsfx )
	startSFX( self.reactorMsfx )
	startSFX( self.reactorRsfx )

	loadSFX( "CURRENT", self.module3_leftsfx, "sfx_reacturbo4_left" )
	loadSFX( "CURRENT", self.module3_midsfx, "sfx_reacturbo4_middle" )
	loadSFX( "CURRENT", self.module3_rightsfx, "sfx_reacturbo4_right")
end

function Hermes_Spirit_sfx:ReInit()

	if( IsAPlayer( "CURRENT" ) )
	then
		setCamEffectOnTurbo( 1 )
	end
	
	startSFX( self.reactorLsfx )
	startSFX( self.reactorMsfx )
	startSFX( self.reactorRsfx )
end

function Hermes_Spirit_sfx:Update()
end

function Hermes_Spirit_sfx:End()
end

function Hermes_Spirit_sfx:Fnc1()
	JoueSon3D("Speed1", "CURRENT", 1, -1)
	AddModuleSpeed ("CURRENT", 100, FALSE)
	AddModuleAcceleration ("CURRENT", 0.000000, FALSE)
	SetModuleTopSpeed( "CURRENT" )
	startSFX( self.module3_leftsfx )
	startSFX( self.module3_midsfx )
	startSFX( self.module3_rightsfx )
	stopSFX( self.reactorLsfx )
	stopSFX( self.reactorMsfx )
	stopSFX( self.reactorRsfx )
end

function Hermes_Spirit_sfx:Fnc2()
	StoppeSon("Speed1", "CURRENT")
	stopSFX( self.module3_leftsfx )
	stopSFX( self.module3_midsfx )
	stopSFX( self.module3_rightsfx )
	startSFX( self.reactorLsfx )
	startSFX( self.reactorMsfx )
	startSFX( self.reactorRsfx )
end

function Hermes_Spirit_sfx:KillSfx()
	stopSFX( self.module3_leftsfx )
	stopSFX( self.module3_midsfx )
	stopSFX( self.module3_rightsfx )
	stopSFX( self.reactorLsfx )
	stopSFX( self.reactorMsfx )
	stopSFX( self.reactorRsfx )
end
