mr_inter={name}

-- Function 'Init'
function mr_inter:Init()
	envmap( "CURRENT", "shieldenv" )
	self.name = GetEntityName()
end

-- Function 'Update'
function mr_inter:Update()



end

-- Function 'End'
function mr_inter:End()

end

function mr_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"mr_inter",-1,1,1)
	end

end
