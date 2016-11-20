fxAceex={ module31SFX }

function fxAceex:Init()
	LoadEntityAnim("fxAceex","fxAceex")
	StartEntityAnim("fxAceex","fxAceex",1,-1,.1)
	
	self.module31SFX = GetEntityName() .. "fxAceex"
	loadSFX( "CURRENT", self.module31SFX, "sfx_fxAceex" )
	startSFX( self.module31SFX )
end

function fxAceex:Update()
end

function fxAceex:End()
end