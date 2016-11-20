gc_inter={name}

-- Function 'Init'
function gc_inter:Init()
	envmap( "CURRENT", "gloo100" )
	self.name = GetEntityName()

end

-- Function 'Update'
function gc_inter:Update()



end

-- Function 'End'
function gc_inter:End()

end

function gc_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"gc_inter",-1,1,1)
	end
end
