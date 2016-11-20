O3D_A_P2_gant05={transName, colName, colName2, punchTime, enable}

-- Function 'Init'
function O3D_A_P2_gant05:Init()

	PrintDebug("O3D_A_P2_gant05 ...")
	
	self.transName = "trans_gant05"
	self.colName = "O3D_C_GBoxe05"
	self.colName2 = "O3D_C01_GBoxe05"
	self.punchTime = GT_INTER_TIME_6
	self.enable = FALSE
	
	GantInit("CURRENT")
	
end

-- Function 'Update'
function O3D_A_P2_gant05:Update()
		
end

-- Function 'End'
function O3D_A_P2_gant05:End()

	StopEvent(self.transName)
	TranslationDetachEntity(self.transName, "CURRENT")
	DeleteEvent(self.transName)
	
end


-- Function 'Notify'
function O3D_A_P2_gant05:Notify(event)

	if self.enable == TRUE and event == TM_ENTITY_ANIM_FINISH then
		GantPrepare("CURRENT")
	end
	
end

-- Function 'Clock'
function O3D_A_P2_gant05:Clock(Id)

	if self.enable == TRUE and Id == 0 then
		GantPunch("CURRENT")
	end

end
