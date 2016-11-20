nt_inter={name}

-- Function 'Init'
function nt_inter:Init()
	envmap( "CURRENT", "shieldenv" )
	self.name = GetEntityName()
end

-- Function 'Update'
function nt_inter:Update()



end

-- Function 'End'
function nt_inter:End()

end

function nt_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"nt_inter",-1,1,1)
	end

end
