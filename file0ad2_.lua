Gillettes_Grid_sfx={ GridSFX }

function Gillettes_Grid_sfx:Init()
	self.GridSFX = GetEntityName() .. "GG"

	if GetNameTypeEntitee("CURRENT")=="gc.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldgc3" )
	elseif GetNameTypeEntitee("CURRENT")=="hy.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldhy3" )
	elseif GetNameTypeEntitee("CURRENT")=="mr.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldmr3" )
	elseif GetNameTypeEntitee("CURRENT")=="nt.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldnt3" )
	elseif GetNameTypeEntitee("CURRENT")=="ps.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldps3" )
	elseif GetNameTypeEntitee("CURRENT")=="rb.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldrb3" )
	elseif GetNameTypeEntitee("CURRENT")=="sa.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldsa3" )
	elseif GetNameTypeEntitee("CURRENT")=="sap.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldsap3" )
	elseif GetNameTypeEntitee("CURRENT")=="tn.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldtn3" )
	elseif GetNameTypeEntitee("CURRENT")=="vul.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldvul3" )
	elseif GetNameTypeEntitee("CURRENT")=="wo.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldwo3" )
	elseif GetNameTypeEntitee("CURRENT")=="xb.dff" then
		loadSFX( "CURRENT", self.GridSFX, "sfx_shieldxb3" )
	end

	ChargeSon("Defense1")

end

function Gillettes_Grid_sfx:Update()
end

function Gillettes_Grid_sfx:End()
end

function Gillettes_Grid_sfx:Fnc1()
	JoueSon3D("Defense1", "CURRENT", 1, -1)
	startSFX( self.GridSFX )
end

function Gillettes_Grid_sfx:Fnc2()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.GridSFX )
end

function Gillettes_Grid_sfx:KillSfx()
	StoppeSon("Defense1", "CURRENT")
	stopSFX( self.GridSFX )
end
