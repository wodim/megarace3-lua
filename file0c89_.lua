PLANER={ module31SFX }

function PLANER:Init()
	LoadEntityAnim("PLANER","PLANER")
	StartEntityAnim("PLANER","PLANER",1,-1,.42)
	
	self.module31SFX = GetEntityName() .. "PLANER"
	loadSFX( "CURRENT", self.module31SFX, "sfx_PLANER" )
	startSFX( self.module31SFX )
end

function PLANER:Update()
end

function PLANER:End()
end