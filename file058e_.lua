rb_inter={name}

-- Function 'Init'
function rb_inter:Init()
	envmap( "CURRENT", "shieldenv3" )
	self.name = GetEntityName()
end

-- Function 'Update'
function rb_inter:Update()



end

-- Function 'End'
function rb_inter:End()

end

function rb_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"rb_inter",-1,1,1)
	end

end
