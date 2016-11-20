sap_inter={name}

-- Function 'Init'
function sap_inter:Init()
	envmap( "CURRENT", "shieldenv3" )
	self.name = GetEntityName()
end

-- Function 'Update'
function sap_inter:Update()



end

-- Function 'End'
function sap_inter:End()

end

function sap_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"sap_inter",-1,1,1)
	end

end
