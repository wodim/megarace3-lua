o3d_c02={name,module1SFX}

function o3d_c02:Init()
	
	SetFlagTestPhysicallyOnMissile("CURRENT", TRUE)
end

function o3d_c02:Update()

end

function o3d_c02:End()

end

function o3d_c02:Notify(event)

	if event == TM_ENTITY_COLLISION_MISSILE then
		EnableCollisions("Col_stalact3",FALSE)
		KillEntity("o3d_father_stalag02")
		GetLuaObject("T_stalact02").ok = 1
	end
	
end