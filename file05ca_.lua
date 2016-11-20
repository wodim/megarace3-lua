Xb_inter={name}

-- Function 'Init'
function Xb_inter:Init()
	envmap( "CURRENT", "shieldenv" )
	self.name = GetEntityName()
end

-- Function 'Update'
function Xb_inter:Update()



end

-- Function 'End'
function Xb_inter:End()

end

function Xb_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"xb_inter",-1,1,1)
	end

end
