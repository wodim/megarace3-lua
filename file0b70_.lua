caillou_6={name,module1SFX}

function caillou_6:Init()
	self.name = GetEntityName()
	SetEntityDamage(self.name,30)
	SetEntityDamageMult( self.name, 2)
	self.module1SFX = GetEntityName() .. "kyou"
	loadSFX( self.name, self.module1SFX, "sfx_dust" )
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)	
end


function caillou_6:Update()

end


function caillou_6:End()

end


function caillou_6:Notify(event)
	if event == TM_ENTITY_COLLISION then
		ColRock("CURRENT")
	end
	
	if event == TM_ENTITY_COLLISION_MISSILE then
		KillEntity("CURRENT")
	end
end