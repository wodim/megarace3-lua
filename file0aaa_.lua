Unicorns_Protection_sfx={ UniSFX }

function Unicorns_Protection_sfx:Init()
	self.UniSFX = GetEntityName() .. "UP"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.UniSFX, "sfx_shield1" )
	end

	ChargeSon("Defense1")

end

function Unicorns_Protection_sfx:Update()
end

function Unicorns_Protection_sfx:End()
end

function Unicorns_Protection_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.UniSFX )
end

function Unicorns_Protection_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.UniSFX )
end

function Unicorns_Protection_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.UniSFX )
end
