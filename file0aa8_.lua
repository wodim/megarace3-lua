Titans_Skin_sfx={ TitanSFX }

function Titans_Skin_sfx:Init()
	self.TitanSFX = GetEntityName() .. "TS"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.TitanSFX, "sfx_shield4" )
	end

	ChargeSon("Defense1")

end

function Titans_Skin_sfx:Update()
end

function Titans_Skin_sfx:End()
end

function Titans_Skin_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.TitanSFX )
end

function Titans_Skin_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.TitanSFX )
end

function Titans_Skin_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.TitanSFX )
end
