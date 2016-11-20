Angels_Blessing_sfx={ AngelSFX }

function Angels_Blessing_sfx:Init()
	self.AngelSFX = GetEntityName() .. "AB"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.AngelSFX, "sfx_shield3" )
	end

	ChargeSon("Defense1")

end

function Angels_Blessing_sfx:Update()
end

function Angels_Blessing_sfx:End()
end

function Angels_Blessing_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.AngelSFX )
end

function Angels_Blessing_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.AngelSFX )
end

function Angels_Blessing_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.AngelSFX )
end
