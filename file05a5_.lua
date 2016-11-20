sa_inter={name}

-- Function 'Init'
function sa_inter:Init()
	envmap( "CURRENT", "shieldenv4" )
	self.name = GetEntityName()
end

-- Function 'Update'
function sa_inter:Update()



end

-- Function 'End'
function sa_inter:End()

end

function sa_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"sa_inter",-1,1,1)
	end

end
