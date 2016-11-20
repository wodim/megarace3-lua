o3d_father_stalag={}

function o3d_father_stalag:Init()

PrintDebug(GetEntityName())


end




function o3d_father_stalag:Update()


end

function o3d_father_stalag:End()
end



function o3d_father_stalag:Notify(event)
	if (event == TM_ENTITY_ANIM_FINISH ) then

		-- Impact ...
		--StoppeSon("Stalact2", "o3d_father_stalag")
		JoueSon3DOnAtomic("Stalact3", "o3d_father_stalag", "stalag_02", FALSE, -1)

		self.ok = 2
		EnableCollisions("Col_stalact1",1)
	end
end