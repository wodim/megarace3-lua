Module02_sfx={ Mod02SFX }

function Module02_sfx:Init()
	self.Mod02SFX = GetEntityName() .. "M2"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.Mod02SFX, "sfx_shield4" )
	end

	ChargeSon("Defense1")

end

function Module02_sfx:Update()
end

function Module02_sfx:End()
end

function Module02_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.Mod02SFX )
end

function Module02_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.Mod02SFX )
end

function Module02_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.Mod02SFX )
end
