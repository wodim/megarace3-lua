o3d_father_stalag03={}

function o3d_father_stalag03:Init()



end




function o3d_father_stalag03:Update()


end

function o3d_father_stalag03:End()
end



function o3d_father_stalag03:Notify(event)

	if (event == TM_ENTITY_ANIM_FINISH ) then

		-- Impact ...
		--StoppeSon("Stalact2", "o3d_father_stalag03")
		JoueSon3DOnAtomic("Stalact3", "o3d_father_stalag03", "stalag_05", FALSE, -1)

		self.ok = 2
		EnableCollisions("Col_stalact4",1)
	end

end