o3d_c03={name,module1SFX}

function o3d_c03:Init()
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
end

function o3d_c03:Update()

end

function o3d_c03:End()

end

function o3d_c03:Notify(event)

	if event == TM_ENTITY_COLLISION_MISSILE then
		EnableCollisions("Col_stalact4",FALSE)
		KillEntity("o3d_father_stalag03")
		GetLuaObject("T_stalact03").ok = 1
	end
	
end