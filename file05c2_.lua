vul_inter={name}

-- Function 'Init'
function vul_inter:Init()
	envmap( "CURRENT", "shieldenv4" )
	self.name = GetEntityName()
end

-- Function 'Update'
function vul_inter:Update()



end

-- Function 'End'
function vul_inter:End()

end

function vul_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"vul_inter",-1,1,1)
	end

end
