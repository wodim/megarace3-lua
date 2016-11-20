Sight_of_Ghost_sfx={ GhostSFX }

function Sight_of_Ghost_sfx:Init()
	self.GhostSFX = GetEntityName() .. "SoG"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldgc2" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldhy2" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldmr2" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldnt2" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldps2" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldrb2" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldsa2" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldsap2" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldtn2" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldvul2" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldwo2" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.GhostSFX, "sfx_shieldxb2" )
	end

	ChargeSon("Defense1")

end

function Sight_of_Ghost_sfx:Update()
end

function Sight_of_Ghost_sfx:End()
end

function Sight_of_Ghost_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.GhostSFX )
end

function Sight_of_Ghost_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.GhostSFX )
end

function Sight_of_Ghost_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.GhostSFX )
end
