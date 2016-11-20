O3D_A_P2_robbi={robbiSFX}

-- Function 'Init'
function O3D_A_P2_robbi:Init()

	PrintDebug("O3D_A_P2_robbi ...")
	
	LoadEntityAnim("CURRENT","robbi_full")
	
	self.robbiSFX = GetEntityName() .. "lepopo"
	loadSFX( "CURRENT", self.robbiSFX, "sfx_fxL6robbi" )
	startSFX( self.robbiSFX )
	
end

-- Function 'Update'
function O3D_A_P2_robbi:Update()

end

-- Function 'End'
function O3D_A_P2_robbi:End()

end
