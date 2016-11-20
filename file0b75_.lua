INSEX_descente={name,module1SFX}

function INSEX_descente:Init()
	self.name = GetEntityName()
	self.module1SFX = GetEntityName() .. "insext"
	
	self.enable = TRUE
	
	loadSFX( self.name , self.module1SFX, "sfx_insext" )
	startSFX( self.module1SFX )
end

function INSEX_descente:Update()

end

function INSEX_descente:End()

end

function INSEX_descente:Notify(event)

	if event == TM_ENTITY_ANIM_FINISH then
	
		StoppeSon("Araign1", "CURRENT")
		--EntityStartMissile("CURRENT", "SpineBee", 1000, 1, "QuadPatch46")		
		HideEntity("CURRENT")
				
		if GetLuaObject("T_insex_descente").ok == TRUE then
		
			startSFX("fx_desc")
			startSFX("fx_desc1")
			startSFX("fx_desc2")
			startSFX("fx_desc3")
			startSFX("fx_desc4")
			startSFX("fx_desc5")		
		
			GetLuaObject("T_insex_descente").ok = FALSE
			GetLuaObject("T_insex_descente").enable = TRUE
			StartClock("T_insex_descente", I_IMPACT_DUR, 0)
		end
	end


end

function INSEX_descente:Clock(Id)
	
	if Id == 0 then
		StoppeSon("Araign2", "CURRENT")
		JoueSon3DOnAtomic("Araign1", "CURRENT", "QuadPatch46", TRUE, -1)
		StartEntityAnim("CURRENT", "INSEX_descente", -1, 1, 1.25)
	end
	
end
