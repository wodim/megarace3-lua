hy_inter={ module1SFX,name }

-- Function 'Init'
function hy_inter:Init()
	envmap( "CURRENT", "shieldenv5" )
	self.module1SFX = GetEntityName().."bouc"
	loadSFX( "CURRENT", self.module1SFX, "sfx_hy" )
	self.name = GetEntityName()

end

-- Function 'Update'
function hy_inter:Update()



end

-- Function 'End'
function hy_inter:End()

end

function hy_inter:Notify(event)
	if event == TM_ENTITY_ANIM_FINISH then
		StartEntityAnim(self.name,"hy_inter",-1,1,1)
	end

end
