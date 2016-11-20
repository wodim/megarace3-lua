o3d_c={name,module1SFX}

function o3d_c:Init()
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
end

function o3d_c:Update()

end

function o3d_c:End()

end

function o3d_c:Notify(event)

	if event == TM_ENTITY_COLLISION_MISSILE then
		EnableCollisions("Col_stalact1",FALSE)
		KillEntity("o3d_father_stalag")
		GetLuaObject("T_stalact").ok = 1
	end
	
end