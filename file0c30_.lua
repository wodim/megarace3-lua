anneau_smaller={annoSFX}

-- Function 'Init'
function anneau_smaller:Init()

	PrintDebug("anneau_smaller ...")
	LoadEntityAnim("CURRENT", "anneau_smaller")
	StartEntityAnim("CURRENT", "anneau_smaller", -1, -1, 1)
	
	self.annoSFX = GetEntityName() .. "anno"
	loadSFX( "CURRENT", self.annoSFX, "sfx_L5anneau" )
	startSFX( self.annoSFX )
	
	JoueSon3D("Anneau", "CURRENT", TRUE, -1)

end

-- Function 'Update'
function anneau_smaller:Update()

end

-- Function 'End'
function anneau_smaller:End()
	
	StoppeSon("Anneau", "CURRENT")

end
