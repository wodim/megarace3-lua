caillou_4={name,module1SFX}

function caillou_4:Init()
	self.name = GetEntityName()
	SetEntityDamage(self.name,50)
	SetEntityDamageMult( self.name, 2)
	self.module1SFX = GetEntityName() .. "kyou"
	loadSFX( self.name, self.module1SFX, "sfx_dust" )
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
end


function caillou_4:Update()

end


function caillou_4:End()

end


function caillou_4:Notify(event)
	if (event == TM_ENTITY_COLLISION ) then
		ColRock("CURRENT")
	end
	
	if event == TM_ENTITY_COLLISION_MISSILE then
		KillEntity("CURRENT")
	end
end