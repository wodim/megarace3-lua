crystos={ module1SFX }

function crystos:Init()
	self.module1SFX = GetEntityName() .. "defo"
	loadSFX( "CURRENT", self.module1SFX, "sfx_crystos" )
	startSFX( self.module1SFX )
end

function crystos:Update()
end

function crystos:End()
end
