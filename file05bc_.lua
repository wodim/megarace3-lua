tn_inter={name}

-- Function 'Init'
function tn_inter:Init()
	envmap( "CURRENT", "shieldenv4" )
	self.name = GetEntityName()
end

-- Function 'Update'
function tn_inter:Update()



end

-- Function 'End'
function tn_inter:End()

end

function tn_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"tn_inter",-1,1,1)
	end

end
