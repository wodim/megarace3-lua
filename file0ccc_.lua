dummy={}

function dummy:Init()
	HideAtomic("o3d_dummy","dummy",1)
	HideAtomic("o3d_bout","Box04",1)

end

function dummy:Update()

	if GetLuaObject("t_plantpont").oki == 2 then 
		MoveEntity("o3d_bout","o3d_dummy","dummy",0,0,0)
	end
end

function dummy:End()
end

function dummy:Clock(Id)
	
end

function dummy:Notify(Event)

	if Event == TM_ENTITY_ANIM_FINISH then
		HideEntity("o3d_bout")
		GetLuaObject("t_plantpont").oki = 3
	end

end









