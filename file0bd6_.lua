O3D_A_P2_gant07={transName, colName, colName2, punchTime, enable}

-- Function 'Init'
function O3D_A_P2_gant07:Init()

	PrintDebug("O3D_A_P2_gant07 ...")
	
	self.transName = "trans_gant07"
	self.colName = "O3D_C_GBoxe07"
	self.colName2 = "O3D_C01_GBoxe07"
	self.punchTime = GT_INTER_TIME_8
	self.enable = FALSE
	
	GantInit("CURRENT")
	
end

-- Function 'Update'
function O3D_A_P2_gant07:Update()
		
end

-- Function 'End'
function O3D_A_P2_gant07:End()

	StopEvent(self.transName)
	TranslationDetachEntity(self.transName, "CURRENT")
	DeleteEvent(self.transName)
	
end


-- Function 'Notify'
function O3D_A_P2_gant07:Notify(event)

	if self.enable == TRUE and event == TM_ENTITY_ANIM_FINISH then
		GantPrepare("CURRENT")
	end
	
end

-- Function 'Clock'
function O3D_A_P2_gant07:Clock(Id)

	if self.enable == TRUE and Id == 0 then
		GantPunch("CURRENT")
	end

end
