Vampires_Sign_sfx={ VampSFX }

function Vampires_Sign_sfx:Init()
	self.VampSFX = GetEntityName() .. "VS"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.VampSFX, "sfx_shield2" )
	end

	ChargeSon("Defense1")

end

function Vampires_Sign_sfx:Update()
end

function Vampires_Sign_sfx:End()
end

function Vampires_Sign_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.VampSFX )
end

function Vampires_Sign_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.VampSFX )
end

function Vampires_Sign_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.VampSFX )
end
