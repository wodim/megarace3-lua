caillou_3={name,module1SFX}

function caillou_3:Init()
	self.name = GetEntityName()
	SetEntityDamage(self.name,20)
	SetEntityDamageMult( self.name, 2.5)
	self.module1SFX = GetEntityName() .. "kyou"
	loadSFX( self.name, self.module1SFX, "sfx_dust" )
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
end


function caillou_3:Update()

end


function caillou_3:End()

end


function caillou_3:Notify(event)
	if (event == TM_ENTITY_COLLISION ) then
		ColRock("CURRENT")
	end
	
	if event == TM_ENTITY_COLLISION_MISSILE then
		KillEntity("CURRENT")
	end
end