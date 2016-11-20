wo_inter={name}

-- Function 'Init'
function wo_inter:Init()
	envmap( "CURRENT", "shieldenv" )
	self.name = GetEntityName()
end

-- Function 'Update'
function wo_inter:Update()



end

-- Function 'End'
function wo_inter:End()

end

function wo_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"wo_inter",-1,1,1)
	end

end
