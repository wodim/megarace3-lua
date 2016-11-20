PractDefIA_sfx={ DefIASFX }

function PractDefIA_sfx:Init()
	self.DefIASFX = GetEntityName() .. "M2"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.DefIASFX, "sfx_shield4" )
	end

	ChargeSon("Defense1")

end

function PractDefIA_sfx:Update()
end

function PractDefIA_sfx:End()
end

function PractDefIA_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.DefIASFX )
end

function PractDefIA_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.DefIASFX )
end

function PractDefIA_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.DefIASFX )
end
