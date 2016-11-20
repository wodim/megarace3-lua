o3d_father_stalag02={}

function o3d_father_stalag02:Init()



end




function o3d_father_stalag02:Update()


end

function o3d_father_stalag02:End()
end



function o3d_father_stalag02:Notify(event)

	if (event == TM_ENTITY_ANIM_FINISH ) then

		-- Impact ...
		--StoppeSon("Stalact2", "o3d_father_stalag02")
		JoueSon3DOnAtomic("Stalact3", "o3d_father_stalag02", "stalag_04", FALSE, -1)

		self.ok = 2
		EnableCollisions("Col_stalact3",1)
	end

end