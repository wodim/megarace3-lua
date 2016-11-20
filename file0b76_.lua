O3D_ANI_LIBEL={dylight}

function O3D_ANI_LIBEL:Init()

	self.dylight = GetEntityName().."light"

	loadSFX( "CURRENT", self.dylight, "sfx_libel" )
	startSFX( self.dylight)

	

end

function O3D_ANI_LIBEL:Update()

end

function O3D_ANI_LIBEL:End()

end
