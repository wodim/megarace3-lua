ps_inter={name}

-- Function 'Init'
function ps_inter:Init()
	envmap( "CURRENT", "shieldenv" )
	self.name = GetEntityName()
end

-- Function 'Update'
function ps_inter:Update()


end

-- Function 'End'
function ps_inter:End()

end

function ps_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"ps_inter",-1,1,1)
	end

end

