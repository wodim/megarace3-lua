O3D_A_P2_gant={transName, colName, colName2, punchTime, enable}

-- Function 'Init'
function O3D_A_P2_gant:Init()

	PrintDebug("O3D_A_P2_gant ...")
	
	self.transName = "trans_gant"
	self.colName = "O3D_C_GBoxe"
	self.colName2 = "O3D_C01_GBoxe"
	self.punchTime = GT_INTER_TIME_1
	self.enable = FALSE
	
	GantInit("CURRENT")
	
end

-- Function 'Update'
function O3D_A_P2_gant:Update()
		
end

-- Function 'End'
function O3D_A_P2_gant:End()

	StopEvent(self.transName)
	TranslationDetachEntity(self.transName, "CURRENT")
	DeleteEvent(self.transName)
	
end


-- Function 'Notify'
function O3D_A_P2_gant:Notify(event)

	if self.enable == TRUE and event == TM_ENTITY_ANIM_FINISH then
		GantPrepare("CURRENT")
	end
	
end

-- Function 'Clock'
function O3D_A_P2_gant:Clock(Id)

	if self.enable == TRUE and Id == 0 then
		GantPunch("CURRENT")
	end

end
