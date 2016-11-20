o3d_father_stalag01={}

function o3d_father_stalag01:Init()



end




function o3d_father_stalag01:Update()


end

function o3d_father_stalag01:End()
end



function o3d_father_stalag01:Notify(event)

	if (event == TM_ENTITY_ANIM_FINISH ) then

		-- Impact ...
		--StoppeSon("Stalact2", "o3d_father_stalag01")
		JoueSon3DOnAtomic("Stalact3", "o3d_father_stalag01", "stalag_03", FALSE, -1)

		self.ok = 2
		EnableCollisions("Col_stalact2",1)
	end
end