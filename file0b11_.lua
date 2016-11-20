hy={module0sfx }


function hy:Init()
	
	LoadPodProperties("CURRENT","Pods\\hy\\hy_Properties.ini")
	LoadPodCombo("CURRENT")
	LoadPodConfig("CURRENT")
	SavePodProperties("CURRENT")

	NotifyToEntiy( "CURRENT", TE_SET_LIFE, -1)
	NotifyToEntiy( "CURRENT", TE_SET_ENERGIE, 0)

	sparks( "CURRENT", "sfx_sparks" )
	envmap( "CURRENT", "shieldenv5" )
	damages( "CURRENT", "sfx_damage" )
	
--effets boucliers hyperion
	self.module0sfx = GetEntityName() .. "hyb"
	loadSFX( "CURRENT", self.module0sfx, "sfx_hy100" )
	startSFX( self.module0sfx )

	loadSFX( "CURRENT", GetEntityName().. "bonus_invisibility" ,  "sfx_bonus_invisibility" )
	loadSFX( "CURRENT", GetEntityName().. "bonus_repulsion" ,  "sfx_bonus_repulsion" )
	loadSFX( "CURRENT", GetEntityName().. "boom" ,  "sfx_boom0" )
	loadSFX( "CURRENT", GetEntityName().. "shadow" ,  "sfx_shadow" )
	startSFX( GetEntityName().. "shadow"  )

	podlight( "CURRENT" )
	initLOD( "CURRENT" )

end

function hy:ReInit()
	
	NotifyToEntiy( "CURRENT", TE_SET_LIFE, -1)
	NotifyToEntiy( "CURRENT", TE_SET_ENERGIE, 0)
	
	startSFX( GetEntityName().. "shadow" )

end

function hy:Update()
end

function hy:End()
end

function hy:Notify(event)

	if event==TM_ENTITY_DEAD then

	elseif event==TM_ENTITY_COLLISION_MISSILE then

	elseif event==TM_POD_SMOKE_START then

	elseif event==TM_POD_SMOKE_END then
	end

end

function hy:Fnc1()

	stopSFX( GetEntityName().. "shadow" )
	stopSFX( GetEntityName() .. "hyb" )
	startSFX( GetEntityName().. "boom"  )

end

function hy:Fnc2()
	-- vue interne
	setCameraPositionInMode( 0, 0, 1, 0 )
	setCameraTargetInMode( 0, -10, 0, 0 )
	setCameraAmortiInMode( 0.1, 0 )

	-- vue extérieure proche
	setCameraPositionInMode( 0, 2.8, 1.3, 1 )
	setCameraTargetInMode( 0, -4, 1, 1 )
	setCameraAmortiInMode( 0.8, 1 )

		-- Looping
		setCameraTargetOnEventInMode( 0, -0.5, 1, 3, 1)
		setCameraPositionOnEventInMode( 0, 4, 1, 3, 1 )
		setCameraAmortiOnEventInMode( 0.1, 3, 1 )
		setCameraRollOnEventInMode( 1, 3, 1 )


	-- vue extérieure lointaine
	setCameraPositionInMode( 0, 6, 1.5, 2 )
	setCameraTargetInMode( 0, -5, 1.5, 2 )
	setCameraAmortiInMode( 0.5, 2)

		-- Looping
		setCameraPositionOnEventInMode( 0, 10, 0.5, 3, 2 )
		setCameraTargetOnEventInMode( 0, -3.5, 2, 3, 2)
		setCameraAmortiOnEventInMode( 0.1, 3, 1 )
		setCameraRollOnEventInMode( 1, 3, 1 )

	cloneCameraConfig( 0, 2 )

	cloneCameraConfig( 0, 4 )
		setCameraRollOnEventInMode( 1, 4, 1 )
		setCameraRollOnEventInMode( 1, 4, 2 )

	cloneCameraConfig( 0, 5 )
	cloneCameraConfig( 0, 6 )
	cloneCameraConfig( 0, 7 )
end