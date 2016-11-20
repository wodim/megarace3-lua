SmokeMissile={ missileSFX }

function SmokeMissile:Init()
	self.missileSFX = GetEntityName() .. "reactor"
	loadSFX( "CURRENT", self.missileSFX, "sfx_bonus_smoke" )
	HideEntity("CURRENT")
end

function SmokeMissile:Update()
	startSFX( self.missileSFX )
	ShowEntity("CURRENT")
end

function SmokeMissile:End()
end

function SmokeMissile:Fnc1()
	stopSFX( self.missileSFX )
	HideEntity("CURRENT")
end
