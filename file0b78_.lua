o3d_c01={name,module1SFX}

function o3d_c01:Init()
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
end

function o3d_c01:Update()

end

function o3d_c01:End()

end

function o3d_c01:Notify(event)

	if event == TM_ENTITY_COLLISION_MISSILE then
		EnableCollisions("Col_stalact2",FALSE)
		KillEntity("o3d_father_stalag01")
		GetLuaObject("T_stalact01").ok = 1
	end
	
end