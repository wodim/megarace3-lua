nano={ module1SFX }


function nano:Init()
	
	LoadPodProperties("CURRENT","Pods\\nano\\nano_Properties.ini")
--	LoadPodCombo("CURRENT")
--	LoadPodConfig("CURRENT")
	SavePodProperties("CURRENT")

	NotifyToEntiy( "CURRENT", TE_SET_LIFE, -1)


--	sparks( "CURRENT", "sfx_sparks" )
	envmap( "CURRENT", "shieldenv2" )

	loadSFX( "CURRENT", GetEntityName().. "boom" ,  "sfx_boom0" )


--	initLOD( "CURRENT" )
	self.module1SFX = GetEntityName() .. "nano"
	loadSFX( "CURRENT" , self.module1SFX, "sfx_nanofx" )
	startSFX( self.module1SFX )
	loadSFX( "CURRENT", GetEntityName().. "shadow" ,  "sfx_shadow" )
	startSFX( GetEntityName().. "shadow" )

end

function nano:ReInit()
	
	NotifyToEntiy( "CURRENT", TE_SET_LIFE, -1)
	NotifyToEntiy( "CURRENT", TE_SET_ENERGIE, 0)
	
	startSFX( GetEntityName().. "shadow" )

end

function nano:Update()
end

function nano:End()

	stopSFX( GetEntityName().. "shadow" )
	startSFX( GetEntityName().. "boom"  )
end

function nano:Notify(event)

--	if event==TM_ENTITY_DEAD then

--	elseif event==TM_ENTITY_COLLISION_MISSILE then

--	elseif event==TM_POD_SMOKE_START then

--	elseif event==TM_POD_SMOKE_END then
--	end

end